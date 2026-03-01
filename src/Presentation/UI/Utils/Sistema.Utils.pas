{
  ATENÇÃO

  Responsabilidade da Classe:

  Esta classe pertence à camada de Sistema e tem como objetivo
  centralizar operações utilitárias relacionadas ao Sistema.

  NÃO deve:

  - Conter regras de negócio.
  - Depender de formulários específicos ou conhecer a View concreta.
  - Misturar responsabilidades diferentes em um mesmo método.
  - Realizar validações de dados ou lançar exceções de domínio.
  - Manipular estado externo fora do seu próprio escopo.

  DEVE:

  - Fornecer operações utilitárias para exibição de dados do Sistema.
  - Executar ações diretas, simples e atômicas.
  - Permanecer independente de formulários específicos.
  - Reduzir a complexidade e a repetição de código na View.
}

unit Sistema.Utils;

interface

type
  TSistemaUtils = class
  private
  {Private Declarations}
  public
  {Public Declarations}
    class function DataAtual: string;
    class function DataHoraAtual: string;
  end;

implementation

uses
  System.SysUtils;

class function TSistemaUtils.DataAtual: string;
begin
  Result := DateToStr(Date);
end;

class function TSistemaUtils.DataHoraAtual: string;
begin
  Result := DateTimeToStr(Now);
end;

end.
