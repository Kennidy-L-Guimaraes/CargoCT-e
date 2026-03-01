{
  ATENÇÃO

  Responsabilidade da Classe:

  Esta classe pertence à camada de apresentação e tem como objetivo
  centralizar operações utilitárias relacionadas a controles visuais.

  NÃO deve:

  - Conter regras de negócio.
  - Depender de formulários específicos ou conhecer a View concreta.
  - Misturar responsabilidades diferentes em um mesmo método.
  - Realizar validações de dados ou lançar exceções de domínio.
  - Manipular estado externo fora do seu próprio escopo.

  DEVE:

  - Fornecer operações utilitárias para manipulação e limpeza de controles.
  - Executar ações diretas, simples e atômicas sobre componentes visuais.
  - Permanecer independente de formulários específicos.
  - Reduzir a complexidade e a repetição de código na View.
}

unit CampoVisual.Utils;
interface
uses
  System.SysUtils,
  Vcl.StdCtrls,
  System.Classes,
  Vcl.Mask,
  Vcl.ComCtrls;

type
 TCampoVisualUtils = Class
   private
   {Private Delcarations}

   public
    {Public Declarations}
    //Para Limpeza
    class procedure LimparControle(AControl: TComponent);
    class procedure LimparControles(AParent: TComponent);


 End;

implementation

{ TCampoVisualUtils }

class procedure TCampoVisualUtils.LimparControle(AControl: TComponent);
begin
  if AControl is TEdit then
    TEdit(AControl).Clear

  else if AControl is TMemo then
    TMemo(AControl).Clear

  else if AControl is TMaskEdit then
    TMaskEdit(AControl).Clear

  else if AControl is TComboBox then
  begin
    TComboBox(AControl).ItemIndex := -1;
    TComboBox(AControl).Text := '';
  end;
end;

class procedure TCampoVisualUtils.LimparControles(AParent: TComponent);
var
  I: Integer;
begin
  for I := 0 to AParent.ComponentCount - 1 do
    LimparControle(AParent.Components[I]);
end;


end.
