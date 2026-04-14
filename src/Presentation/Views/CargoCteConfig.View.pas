unit CargoCteConfig.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Config.UseCase, Config.DTO, Config.Factory, CargoCTe.View, Design.Utils;

type
  TFrm_CargoCteConfig = class(TForm)
    Pnl_Background: TPanel;
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
    GrBx_ConfiguracoesdeDesign: TGroupBox;
    Clbx_CorFundo: TColorBox;
    Pnl_ConfigCordeFundo: TLabel;
    Clbx_CordosBotoes: TColorBox;
    Lbl_ConfigCorBotoes: TLabel;
    Btn_ConfiguracoesPadrao: TBitBtn;
    Lbl_ConfigCordaFonte: TLabel;
    Clbx_CordaFonte: TColorBox;
    Lbl_ExibirHelpPanel: TLabel;
    Lbl_ExibirBanners: TLabel;
    Lbl_ExibirValorTotal: TLabel;
    Chbx_HabilitarBtnBancoDeDados: TCheckBox;
    Lbl_HabilitarBotoesBancodeDados: TLabel;
    Lbl_ExibirLogonaNota: TLabel;
    Lbl_ConfigPadrao: TLabel;
    Chbx_ConfigPadrao: TCheckBox;
    procedure Btn_BtnCancelarConfiguracoesClick(Sender: TObject);
    procedure Btn_BtnSalvarrConfiguracoesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
    ADTO : TDTOConfig;
    procedure preencherDTO;
    procedure AplicarConfiguracoesDesign;
    procedure AplicarConfiguracoesSistema;
    procedure InicializarConfiguracoes;
  end;

var
  Frm_CargoCteConfig: TFrm_CargoCteConfig;

implementation

{$R *.dfm}

procedure TFrm_CargoCteConfig.AplicarConfiguracoesDesign;
var
 Usecase: TUsecaseConfig;
 Dto    : TDTOConfig;
 CorBase, CorBorda, CorFonte, CorFundo: TColor;
begin
 UseCase  := TConfigFactory.NovoUseCase;
  try
   Dto := UseCase.Inicializar;
   CorBase  := StringToColor(Dto.CordosBotoes);
   CorFonte := StringToColor(Dto.CordaFonte);
   CorBorda := TDesign.DarkenColor(CorBase, 30);
   CorFundo := StringToColor(Dto.CordeFundo);
   Pnl_Background.Color                 := CorBorda;
   Pnl_Background.Font.Color            := CorFonte;

   Clbx_CorFundo.Selected     := StringToColor(Dto.CordeFundo);
   Clbx_CordosBotoes.Selected := StringToColor(Dto.CordosBotoes);
   Clbx_CordaFonte.Selected   := StringToColor(Dto.CordaFonte);
  finally
  UseCase.Free;
  end;
end;

procedure TFrm_CargoCteConfig.AplicarConfiguracoesSistema;
var
 Usecase: TUsecaseConfig;
 Dto    : TDTOConfig;
begin
 UseCase  := TConfigFactory.NovoUseCase;
  try
   Dto := UseCase.Inicializar;
   Chbx_ExibirHelpPanel.Checked               := Dto.ExibirHelPanel;
   Chbx_ExibirBanners.Checked                 := Dto.ExibirBanners;
   Chbx_ExibirValorTotalNotasEmitidas.Checked := Dto.ExibirValorTotal;
   Chbx_ExibirLogoNotaCte.Checked             := Dto.ExibirLogo;
   Chbx_HabilitarBtnBancoDeDados.Checked      := Dto.HabilitarBtnsBanco;
   Chbx_ConfigPadrao.Checked                  := Dto.ConfiguracoesPadrao;
   Pnl_BtnsBancoDeDados.Enabled               := Dto.HabilitarBtnsBanco;
  finally
  UseCase.Free;
  end;
end;
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

procedure TFrm_CargoCteConfig.FormCreate(Sender: TObject);
begin
 InicializarConfiguracoes;
end;

procedure TFrm_CargoCteConfig.InicializarConfiguracoes;
var
 Usecase: TUsecaseConfig;
 Dto    : TDTOConfig;
begin
  UseCase := TConfigFactory.NovoUseCase;
  try
  Dto := UseCase.Inicializar;
  if Dto.ConfiguracoesPadrao = False then
  begin
    AplicarConfiguracoesDesign;
    AplicarConfiguracoesSistema;
  end;
  finally
  UseCase.Free;
  end;
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
  ADTO.ConfiguracoesPadrao:= Chbx_ConfigPadrao.Checked;
end;

end.
