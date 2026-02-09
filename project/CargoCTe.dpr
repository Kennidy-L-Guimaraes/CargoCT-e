program CargoCTe;

uses
  Vcl.Forms,
  CargoCTe.View in '..\view\CargoCTe.View.pas' {Frm_CargoCTe},
  MenuNavigationService in '..\services\MenuNavigationService.pas' {MenuNavigationService.pas},
  CargoCteConfig.View in '..\view\CargoCteConfig.View.pas' {Frm_CargoCteConfig},
  CargoCteNovaTransportadora.View in '..\view\CargoCteNovaTransportadora.View.pas' {Frm_NovaTransportadora},
  CampoVisual.Utils in '..\ui\utils\CampoVisual.Utils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_CargoCTe, Frm_CargoCTe);
  Application.CreateForm(TFrm_CargoCteConfig, Frm_CargoCteConfig);
  Application.CreateForm(TFrm_NovaTransportadora, Frm_NovaTransportadora);
  Application.Run;
end.
