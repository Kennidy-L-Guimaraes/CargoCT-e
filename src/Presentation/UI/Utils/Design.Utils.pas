unit Design.Utils;

interface
 uses Vcl.Graphics, Winapi.Windows;
type
 TDesign = Class
 {

 Esta classe é exclusiva para designs; ela não deve:
 - Validar dados — use TValidar, se possível.
 - Conhecer formulários — ela é genérica.
 - Fazer conexão com o banco de dados ou com qualquer dado externo à própria classe.

 Seu uso é condicionado ao design, possuindo funções de classe (“class”) e
 procedimentos em determinados componentes,
 a fim de estilizar, como aplicar efeitos em formulários, reduzindo o custo e a manutenção.

 }
  public
    class function DarkenColor(Color: TColor; Percent: Byte): TColor; //Escurece as Bordas dos Botões
 End;

implementation

{ TDesign }

class function TDesign.DarkenColor(Color: TColor; Percent: Byte): TColor;
var
  R, G, B: Byte;
begin
  Color := ColorToRGB(Color);

  R := GetRValue(Color);
  G := GetGValue(Color);
  B := GetBValue(Color);

  R := Round(R * (100 - Percent) / 100);
  G := Round(G * (100 - Percent) / 100);
  B := Round(B * (100 - Percent) / 100);

  Result := RGB(R, G, B);
end;
end.
