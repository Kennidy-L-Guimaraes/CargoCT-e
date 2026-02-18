unit CargoCteNovaTransportadora.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtDlgs, Vcl.Imaging.jpeg;

type
  TFrm_NovaTransportadora = class(TForm)
    Pnl_Background: TPanel;
    Opd_BuscarImagem: TOpenPictureDialog;
    Scbx_NovaTransportadora: TScrollBox;
    Grbx_IdentificacaoFiscal: TGroupBox;
    Pnl_IdentificacaoCte: TPanel;
    Lbl_IdentificacaoSerie: TLabel;
    Lbl_IdentificacaoRS: TLabel;
    Lbl_IdentificacaoInscricaoIE: TLabel;
    Lbl_IdentificacaoRegimeTribu: TLabel;
    Img_IdentificacaoCNPJLupa: TImage;
    Edt_IdentificacaoCNPJ: TEdit;
    Edt_IdentificacaoFiscalRS: TEdit;
    Edt_IdentificacaoInscricaoIE: TEdit;
    Cmbx_IdentificacaoRegimeTribu: TComboBox;
    Grbx_EnderecoFiscal: TGroupBox;
    Pnl_EnderecoFiscal: TPanel;
    Lbl_EnderecoCEP: TLabel;
    Lbl_EnderecoMunicipio: TLabel;
    Lbl_EnderecoBairro: TLabel;
    Lbl_EnderecoLogradouro: TLabel;
    Lbl_EnderecoNumero: TLabel;
    Lbl_EnderecoCodigoIBGE: TLabel;
    Lbl_EnderecoComplemento: TLabel;
    Lbl_EnderecoUF: TLabel;
    Img_EnderecoLupa: TImage;
    Edt_EnderecoCEP: TEdit;
    Edt_EnderecoMunicipio: TEdit;
    Edt_EnderecoBairro: TEdit;
    Edt_EnderecoLogradouro: TEdit;
    Edt_EnderecoNumero: TEdit;
    Edt_EnderecoCodigoIBGE: TEdit;
    Edt_EnderecoComplemento: TEdit;
    Edt_EnderecoUF: TEdit;
    Grbx_Contato: TGroupBox;
    Pnl_Contato: TPanel;
    Lbl_ContatoTelefone: TLabel;
    Lbl_ContatoEmail: TLabel;
    Lbl_ContatoResponsavel: TLabel;
    Edt_ContatoTelefone: TEdit;
    Edt_ContatoEmail: TEdit;
    Edt_ContatoResponsavel: TEdit;
    Grbx_DadosOperacionais: TGroupBox;
    Pnl_DadosOperacionais: TPanel;
    Lbl_DadosOperacionaisTipoDeTransporte: TLabel;
    Lbl_DadosOperacionaisTipoDeOperacao: TLabel;
    Cmbx_DadosOperacionaisTipoDeTransporte: TComboBox;
    Cmbx_DadosOperacionaisTipoDeOperacao: TComboBox;
    Grbx_VeiculoMotorista: TGroupBox;
    Pnl_VeiculoMotorista: TPanel;
    Lbl_VeiculoMotoristaMotoristaAssociado: TLabel;
    Lbl_VeiculoMotoristaPlaca: TLabel;
    Lbl_VeiculoMotoristaPlacaUF: TLabel;
    Lbl_VeiculoMotoristaTipoVeiculo: TLabel;
    Lbl_VeiculoMotoristaCapacidade: TLabel;
    Cmbx_VeiculoMotoristaMotoristaAssociado: TComboBox;
    Edt_VeiculoMotoristaPlaca: TEdit;
    Edt_VeiculoMotoristaTipoVeiculo: TEdit;
    Edt_VeiculoMotoristaCapacidade: TEdit;
    Cmbx_VeiculoMotoristaPlacaUF: TComboBox;
    Grbx_DadosFiscais: TGroupBox;
    Pnl_DadosFiscais: TPanel;
    Lbl_DadosTipoTributacao: TLabel;
    Lbl_DadosObservacaoFiscal: TLabel;
    Lbl_DadosAliquotaPadrao: TLabel;
    Lbl_DadosPapelCTe: TLabel;
    Edt_DadosObservacaoFiscal: TEdit;
    Edt_DadosAliquotaPadrao: TEdit;
    Cmbx_DadosTipoTributacao: TComboBox;
    Cmbx_DadosPapelCTe: TComboBox;
    Grbx_Sistema: TGroupBox;
    Panel_Sistema: TPanel;
    Lbl_SistemaStatus: TLabel;
    Lbl_SistemaDataCadastro: TLabel;
    Lbl_SistemaResponsavel: TLabel;
    Cmbx_SistemaStatus: TComboBox;
    Edt_SistemaDataCadastro: TEdit;
    Edt_SistemaResponsavel: TEdit;
    Pnl_NovaTransportadoraBtns: TPanel;
    Pnl_BtnSalvarNovaTransportadora: TPanel;
    Shp_BtnSalvarNovaTransportadora: TShape;
    Btn_SalvarNovaTransportadora: TSpeedButton;
    Pnl_BtnCancelarNovaTransportadora: TPanel;
    Shp_BtnCancelarNovaTransportadora: TShape;
    Btn_CancelarNovaTransportadora: TSpeedButton;
    Pnl_IdentificacaoFiscalLogo: TPanel;
    Img_IdentificacaoLogo: TImage;
    Btn_IdentificacaoLogo: TButton;
    Img_NovaTransportadoraBanner: TImage;
    procedure Btn_CancelarNovaTransportadoraClick(Sender: TObject);
    procedure ResetarConfiguracoes;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_NovaTransportadora: TFrm_NovaTransportadora;

implementation

{$R *.dfm}

uses CampoVisual.Utils;

procedure TFrm_NovaTransportadora.Btn_CancelarNovaTransportadoraClick(
  Sender: TObject);
begin
  ResetarConfiguracoes;
  Frm_NovaTransportadora.Close;
end;

procedure TFrm_NovaTransportadora.ResetarConfiguracoes;
begin
  //Identificação Fiscal
  TCampoVisualUtils.LimparCamposEdt(Edt_IdentificacaoCNPJ);
  TCampoVisualUtils.LimparCamposEdt(Edt_IdentificacaoFiscalRS);
  TCampoVisualUtils.LimparCamposEdt(Edt_IdentificacaoInscricaoIE);

  //Endereço Fiscal
  TCampoVisualUtils.LimparCamposEdt(Edt_EnderecoCEP);
  TCampoVisualUtils.LimparCamposEdt(Edt_EnderecoMunicipio);
  TCampoVisualUtils.LimparCamposEdt(Edt_EnderecoBairro);
  TCampoVisualUtils.LimparCamposEdt(Edt_EnderecoLogradouro);
  TCampoVisualUtils.LimparCamposEdt(Edt_EnderecoNumero);
  TCampoVisualUtils.LimparCamposEdt(Edt_EnderecoCodigoIBGE);
  TCampoVisualUtils.LimparCamposEdt(Edt_EnderecoComplemento);
  TCampoVisualUtils.LimparCamposEdt(Edt_EnderecoUF);

  //Dados Fiscais
  TCampoVisualUtils.LimparCamposEdt(Edt_DadosObservacaoFiscal);
  TCampoVisualUtils.LimparCamposEdt(Edt_DadosAliquotaPadrao);

  //Veiculo e Motorista
  TCampoVisualUtils.LimparCamposEdt(Edt_VeiculoMotoristaPlaca);
  TCampoVisualUtils.LimparCamposEdt(Edt_VeiculoMotoristaTipoVeiculo);
  TCampoVisualUtils.LimparCamposEdt(Edt_VeiculoMotoristaCapacidade);

  //Sistema
  TCampoVisualUtils.LimparCamposEdt(Edt_SistemaDataCadastro);
  TCampoVisualUtils.LimparCamposEdt(Edt_SistemaResponsavel);

  //Contato
  TCampoVisualUtils.LimparCamposEdt(Edt_ContatoTelefone);
  TCampoVisualUtils.LimparCamposEdt(Edt_ContatoEmail);
  TCampoVisualUtils.LimparCamposEdt(Edt_ContatoResponsavel);


  //Resetar Posição do ScrollBox
  Scbx_NovaTransportadora.VertScrollBar.Position := 0;
end;

end.
