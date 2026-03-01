program CargoCTe;

uses
  Vcl.Forms,
  CargoCTe.View in 'src\Presentation\Views\CargoCTe.View.pas' {Frm_CargoCTe},
  CargoCteConfig.View in 'src\Presentation\Views\CargoCteConfig.View.pas' {Frm_CargoCteConfig},
  CargoCteNovaTransportadora.View in 'src\Presentation\Views\CargoCteNovaTransportadora.View.pas' {Frm_NovaTransportadora},
  MenuNavigation.Utils in 'src\Presentation\UI\Utils\MenuNavigation.Utils.pas',
  CampoVisual.Utils in 'src\Presentation\UI\Utils\CampoVisual.Utils.pas',
  Transportadora.Interfaces in 'src\Domain\Interfaces\Transportadora.Interfaces.pas',
  Endereco.Tipo.CEP in 'src\Domain\ValueObjects\Endereco.Tipo.CEP.pas',
  IdentidadeFiscal.Tipo.CNPJ in 'src\Domain\ValueObjects\IdentidadeFiscal.Tipo.CNPJ.pas',
  IdentidadeFiscal.Entidade in 'src\Domain\Entities\IdentidadeFiscal.Entidade.pas',
  Endereco.Entidade in 'src\Domain\Entities\Endereco.Entidade.pas',
  Validar.Exceptions in 'src\Domain\Exceptions\Validar.Exceptions.pas',
  DadosFiscais.Entidade in 'src\Domain\Entities\DadosFiscais.Entidade.pas',
  DadosOperacionais.Entidade in 'src\Domain\Entities\DadosOperacionais.Entidade.pas',
  Veiculo.Entidade in 'src\Domain\Entities\Veiculo.Entidade.pas',
  CargoCteNovaFrota.View in 'src\Presentation\Views\CargoCteNovaFrota.View.pas' {Frm_NovaFrota},
  Vcl.Themes,
  Vcl.Styles,
  Sistema.Utils in 'src\Presentation\UI\Utils\Sistema.Utils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := '';
  Application.CreateForm(TFrm_CargoCTe, Frm_CargoCTe);
  Application.CreateForm(TFrm_CargoCteConfig, Frm_CargoCteConfig);
  Application.CreateForm(TFrm_NovaTransportadora, Frm_NovaTransportadora);
  Application.CreateForm(TFrm_NovaFrota, Frm_NovaFrota);
  Application.Run;
end.
