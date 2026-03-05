unit Veiculo.Tipo.Placa;

interface
uses System.SysUtils, Validar.Exceptions;
type
 TPlaca = Record
  private
   {Private Declarations}
   FPlaca : string;
   procedure ValidarPlacaMercosul;
   procedure ValidarPlacaClassica;
   procedure ValidarDados;
  public
   {Public Declarations}
   property Placa   : string read FPlaca;
   constructor Create(APlaca: string);

 End;

implementation

{ TPlaca }

constructor TPlaca.Create(APlaca: string);
begin
 FPlaca := UpperCase(Trim(APlaca)); //Normalização
 FPlaca := FPlaca.Replace('-', '');
 ValidarDados;
end;

procedure TPlaca.ValidarDados;
begin
   TValidar.SeVazio('Placa', FPlaca);
   TValidar.SeDiferenteDe('Placa', FPlaca.Length, 7); //valida o comprimento após remover o hífen
  if CharInSet(FPlaca[5], ['A'..'Z']) then
   ValidarPlacaMercosul
  else
   ValidarPlacaClassica;
end;

procedure TPlaca.ValidarPlacaClassica;
var
  I: Integer;
begin
  for I := 1 to 3 do
    if not CharInSet(FPlaca[I], ['A'..'Z']) then
    TValidar.LancarErro('Placa', 'Placa Inválida');

  for I := 4 to 7 do
    if not CharInSet(FPlaca[I], ['0'..'9']) then
    TValidar.LancarErro('Placa', 'Placa Inválida');
end;

procedure TPlaca.ValidarPlacaMercosul;
begin
  if not (
     CharInSet(FPlaca[1], ['A'..'Z']) and
     CharInSet(FPlaca[2], ['A'..'Z']) and
     CharInSet(FPlaca[3], ['A'..'Z']) and
     CharInSet(FPlaca[4], ['0'..'9']) and
     CharInSet(FPlaca[5], ['A'..'Z']) and
     CharInSet(FPlaca[6], ['0'..'9']) and
     CharInSet(FPlaca[7], ['0'..'9'])
  ) then
    TValidar.LancarErro('Placa MERCOSUL', 'Placa Inválida');
end;

end.
