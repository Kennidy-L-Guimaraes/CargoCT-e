{

***************************************************************
  Regras da Classe TValidar
***************************************************************

1) Finalidade
   - Responsável exclusivamente por validações genéricas e estruturais.
   - Não contém regras de negócio ou validações específicas de domínio.

2) Dependências
   - Deve depender apenas de System.SysUtils e System.TypInfo.
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
   - Deve lançar apenas exceções padrão da RTL (ex: EArgumentException ou Exception.CreateFmt).
   - Não deve criar tipos específicos de exceção.

7) Princípio
   - Se a validação depende do significado do dado, ela pertence ao domínio.
   - Se a validação depende apenas da estrutura do dado, pode estar aqui.

***************************************************************
}

unit Validar.Exceptions;

interface
uses System.SysUtils, System.TypInfo;

type
 TValidar = class
   private
   {Private Variables}
   public
   {Public Variablres}
   class procedure LancarErro(const ANomeVar, AMensagemErro: string);
   class procedure SeEnumInvalido<T>(const ANomeVar: string; AValue: T); static; //Para validar Enum's
   class procedure SeVazio(const ANomeVar, AValue: string);
   class procedure SeNulo(const ANomeVar: string; AValue: TObject); static;
   class procedure SeMenorQue(const ANomeVar: string; AValue, AMin: Integer); static;
   class procedure SeMenorOuZero(const ANomeVar: string; AValue: integer); overload;
   class procedure SeMenorOuZero(const ANomeVar: string; AValue: currency); overload;
   class procedure SeMaiorQue(const ANomeVar: string; AValue, AMax: Integer); static;
   class procedure SeDiferenteDe(const ANomeVar: string; AValue, AComparar: Integer); overload; static;
   class procedure SeDiferenteDe(const ANomeVar, AValue, AComparar: string); overload; static;
   class procedure SeNaoNumerico(const ANomeVar, AValue: string);
   class procedure SeNaoContemNaListaText(const ANomeVar, AValue: string; const ALista: array of string);
 end;

implementation

class procedure TValidar.LancarErro(const ANomeVar, AMensagemErro: string);
begin
  raise EArgumentException.CreateFmt('Erro em %s! %s.', [ANomeVar, AMensagemErro]);
end;

class procedure TValidar.SeEnumInvalido<T>(const ANomeVar: string; AValue: T);
var
  TipoInfo: PTypeInfo;
  TipoData: PTypeData;
  Valor: Integer;
begin
  TipoInfo := TypeInfo(T);

  if TipoInfo^.Kind <> tkEnumeration then
    raise EArgumentException.Create('Tipo informado não é enum.');

  TipoData := GetTypeData(TipoInfo);
  Valor := PInteger(@AValue)^;

  if (Valor < TipoData^.MinValue) or (Valor > TipoData^.MaxValue) then
    raise EArgumentException.CreateFmt('%s inválido.', [ANomeVar]);
end;

class procedure TValidar.SeMaiorQue(const ANomeVar: string; AValue,
  AMax: Integer);
begin
 if AValue > AMax then
  raise EArgumentException.CreateFmt('Valor inválido, %s deve ser menor ou igual a %d.',[ANomeVar, AMax]);
end;

class procedure TValidar.SeMenorOuZero(const ANomeVar: string; AValue: integer);
begin
 If AValue < 0 then
  raise EArgumentException.CreateFmt('Valor inválido, %s deve ser maior que zero',[ANomeVar]);
end;

class procedure TValidar.SeMenorOuZero(const ANomeVar: string;
  AValue: currency);
begin
 If AValue < 0 then
  raise EArgumentException.CreateFmt('Valor inválido, %%s deve ser maior que zero.',[ANomeVar]);
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
    raise EArgumentException.CreateFmt('%s inválido. Valor deve estar entre: %s.',
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
   raise EArgumentException.CreateFmt('Valor inválido, o %s não deve ser nulo.', [ANomeVar]);
end;

class procedure TValidar.SeDiferenteDe(const ANomeVar: string; AValue,
  AComparar: Integer);
begin
  if AValue <> AComparar then
   raise EArgumentException.CreateFmt('Valor inválido, %s deve possuir %d caracteres.',[ANomeVar, AComparar]);
end;

class procedure TValidar.SeDiferenteDe(const ANomeVar, AValue,
  AComparar: string);
begin
  if AValue <> AComparar then
   raise EArgumentException.CreateFmt('Valor inválido, %s deve ser igual a %s',[ANomeVar, AComparar]);
end;

{ TGenericException }

class procedure TValidar.SeVazio(const ANomeVar, AValue: string);
begin
  if Trim(AValue).IsEmpty then
    raise EArgumentException.CreateFmt('%s não pode ser vazio.', [ANomeVar]);
end;

end.
