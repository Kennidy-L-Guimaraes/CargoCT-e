unit CargoCteConfig.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Config.UseCase, Config.DTO, Config.Factory, CargoCTe.View;

type
  TFrm_CargoCteConfig = class(TForm)
    Pnl_ConfiguracoesBackground: TPanel;
    Pnl_ConfiguracoesBtns: TPanel;
    Pnl_BtnSalvarConfiguracoes: TPanel;
    Shp_BtnSalvarConfiguracoes: TShape;
    Btn_BtnSalvarrConfiguracoes: TSpeedButton;
    Pnl_BtnCancelarConfiguracoes: TPanel;
    Shp_BtnCancelarConfiguracoes: TShape;
    Btn_BtnCancelarConfiguracoes: TSpeedButton;
    Grbx_ConfiguracoesInterface: TGroupBox;
    Grbx_ConfiguracoesNotaCte: TGroupBox;
    Chbx_ExibirHelpPanel: TCheckBox;
    Chbx_ExibirBanners: TCheckBox;
    Chbx_ExibirValorTotalNotasEmitidas: TCheckBox;
    Chbx_ExibirLogoNotaCte: TCheckBox;
    Pnl_BtnsBancoDeDados: TPanel;
    Btn_ExcluirTransportadoras: TBitBtn;
    Chbx_HabilitarBtnBancoDeDados: TCheckBox;
    Btn_ExcluirBancoDeDados: TBitBtn;
    GrBx_ConfiguracoesdeDesign: TGroupBox;
    Clbx_CorFundo: TColorBox;
    Pnl_ConfigCordeFundo: TLabel;
    Clbx_CordosBotoes: TColorBox;
    Lbl_ConfigCorBotoes: TLabel;
    Btn_ConfiguracoesPadrao: TBitBtn;
    Lbl_ConfigCordaFonte: TLabel;
    Clbx_CordaFonte: TColorBox;
    procedure Btn_BtnCancelarConfiguracoesClick(Sender: TObject);
    procedure Btn_BtnSalvarrConfiguracoesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
    ADTO : TDTOConfig;
    procedure preencherDTO;
  end;

var
  Frm_CargoCteConfig: TFrm_CargoCteConfig;

implementation

{$R *.dfm}

procedure TFrm_CargoCteConfig.Btn_BtnCancelarConfiguracoesClick(
  Sender: TObject);
begin
 Frm_CargoCteConfig.Close;
end;

procedure TFrm_CargoCteConfig.Btn_BtnSalvarrConfiguracoesClick(Sender: TObject);
var
  UseCase   : TUsecaseConfig;
begin
  preencherDTO;
  UseCase    := TConfigFactory.NovoUseCase;
  try
    UseCase.Salvar(ADTO);
    ShowMessage('Configurações Salvas com Sucesso! O sistema Reiniciara para aplicar as novas configurações...');
  finally
    UseCase.Free;
  end;
  Frm_CargoCteConfig.Close;
  Frm_CargoCTe.Close;
end;

procedure TFrm_CargoCteConfig.preencherDTO;
begin
  ADTO.ExibirHelPanel     := Chbx_ExibirHelpPanel.Checked;
  ADTO.ExibirBanners      := Chbx_ExibirBanners.Checked;
  ADTO.ExibirValorTotal   := Chbx_ExibirValorTotalNotasEmitidas.Checked;
  ADTO.HabilitarBtnsBanco := Chbx_HabilitarBtnBancoDeDados.Checked;
  ADTO.ExibirLogo         := Chbx_ExibirLogoNotaCte.Checked;
  ADTO.CordeFundo         := ColorToString(Clbx_CorFundo.Selected);
  ADTO.CordosBotoes       := ColorToString(Clbx_CordosBotoes.Selected);
  ADTO.CordaFonte         := ColorToString(Clbx_CordaFonte.Selected);
end;

end.
