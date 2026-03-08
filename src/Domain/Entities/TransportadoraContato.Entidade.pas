unit TransportadoraContato.Entidade;

interface
uses Validar.Exceptions, System.SysUtils;

 type
  TContato = class
    private
     {Private Declarations}
     FNumeroTelefone: string; //*
     FSite          : string; //*
     FEmail         : string;
     procedure ValidarDados;
     procedure ValidarNumeroTelefone;
     procedure ValidarSite;
    public
     {Public Declarations}
     constructor Create(ANumeroTelefone, ASite, AEmail: string);
     property NumeroTelefone : string read FNumeroTelefone;
     property Site           : string read FSite;
     property Email          : string read FEmail;


  end;

implementation

{ TContato }

constructor TContato.Create(ANumeroTelefone, ASite, AEmail: string);
begin
  FNumeroTelefone := Trim(ANumeroTelefone);
  FNumeroTelefone := FNumeroTelefone.Replace('(', '');
  FNumeroTelefone := FNumeroTelefone.Replace(')', '');
  FNumeroTelefone := FNumeroTelefone.Replace('-', '');
  FNumeroTelefone := FNumeroTelefone.Replace(' ', '');
  FSite           := Trim(ASite);
  FEmail          := Trim(AEmail);
  ValidarDados;
end;

procedure TContato.ValidarDados;
begin
  ValidarNumeroTelefone;
  ValidarSite;
end;

procedure TContato.ValidarNumeroTelefone;
begin
  TValidar.SeVazio('Número de Telefone', FNumeroTelefone);
  if not (FNumeroTelefone.Length in [10, 11]) then
  TValidar.LancarErro('Número de Telefone', 'Deve ter 10 ou 11 dígitos'); //Verificação após a normalização
end;

procedure TContato.ValidarSite;
begin
  TValidar.SeVazio('Site', FSite);
end;

end.
