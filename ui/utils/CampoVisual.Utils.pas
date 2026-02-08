{
Ateñção!
Essa classe não deve:
 Conhecer Regras de negócios.
 Conhecer a View depender dela.
 Não pode misturar componentes diferentes em uma mesma regra.
 Não pode válidar campos (Lançar Exceções).

O que ela deve:
 Conter funções e procedimentos para estilização e limpeza de campos.
 Conter regras próprias (sem que conheça a View).
 Operações diretas e atomicas em seu próprio escopo.
 Despoluir (desconsistionar) a View sem que dela dependa.
}

unit CampoVisual.Utils;
interface

type
 TCampoVisualUtils = Class
   private
   {Private Delcarations}

   public
    {Public Declarations}
 End;

implementation

end.
