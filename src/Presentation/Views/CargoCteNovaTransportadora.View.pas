unit CargoCteNovaTransportadora.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtDlgs, Vcl.Imaging.jpeg, Vcl.Mask;

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
    Edt_IdentificacaoFiscalRS: TEdit;
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
    Edt_EnderecoMunicipio: TEdit;
    Edt_EnderecoBairro: TEdit;
    Edt_EnderecoLogradouro: TEdit;
    Edt_EnderecoNumero: TEdit;
    Edt_EnderecoCodigoIBGE: TEdit;
    Edt_EnderecoComplemento: TEdit;
    Grbx_Contato: TGroupBox;
    Pnl_Contato: TPanel;
    Lbl_ContatoTelefone: TLabel;
    Lbl_ContatoEmail: TLabel;
    Lbl_ContatoResponsavel: TLabel;
    Edt_ContatoEmail: TEdit;
    Edt_ContatoResponsavel: TEdit;
    Grbx_DadosOperacionais: TGroupBox;
    Pnl_DadosOperacionais: TPanel;
    Lbl_DadosOperacionaisTipoDeTransporte: TLabel;
    Lbl_DadosOperacionaisTipoDeOperacao: TLabel;
    Cmbx_DadosOperacionaisTipoDeTransporte: TComboBox;
    Cmbx_DadosOperacionaisTipoDeOperacao: TComboBox;
    Grbx_DadosFiscais: TGroupBox;
    Pnl_DadosFiscais: TPanel;
    Lbl_DadosTipoTributacao: TLabel;
    Lbl_DadosObservacaoFiscal: TLabel;
    Lbl_DadosAliquotaPadrao: TLabel;
    Lbl_DadosPapelCTe: TLabel;
    Edt_DadosObservacaoFiscal: TEdit;
    Cmbx_DadosTipoTributacao: TComboBox;
    Cmbx_DadosPapelCTe: TComboBox;
    Grbx_Sistema: TGroupBox;
    Panel_Sistema: TPanel;
    Lbl_SistemaStatus: TLabel;
    Lbl_SistemaDataCadastro: TLabel;
    Lbl_SistemaResponsavel: TLabel;
    Cmbx_SistemaStatus: TComboBox;
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
    Label10: TLabel;
    MsEdt_IdentificacaoCNPJ: TMaskEdit;
    MsEdt_IdentificacaoInscricaoIE: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MsEdt_EnderecoCEP: TMaskEdit;
    Label4: TLabel;
    Cmbx_EnderecoUF: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    MsEdt_SistemaDataCadastro: TMaskEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    MsEdt_DadosAliquotaPadrao: TMaskEdit;
    MsEdt_ContatoTelefone: TMaskEdit;
    Label18: TLabel;
    Label19: TLabel;
    Btn_SistemaDataAtual: TButton;
    procedure Btn_CancelarNovaTransportadoraClick(Sender: TObject);
    procedure ResetarConfiguracoes;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Btn_SalvarNovaTransportadoraClick(Sender: TObject);
    procedure Btn_SistemaDataAtualClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_NovaTransportadora: TFrm_NovaTransportadora;

implementation

{$R *.dfm}

uses CampoVisual.Utils, CargoCteNovaFrota.View, Sistema.Utils;

procedure TFrm_NovaTransportadora.Btn_CancelarNovaTransportadoraClick(
  Sender: TObject);
begin
  ResetarConfiguracoes;
  Frm_NovaTransportadora.Close;
end;

procedure TFrm_NovaTransportadora.Btn_SalvarNovaTransportadoraClick(
  Sender: TObject);
begin
  ResetarConfiguracoes;
end;

procedure TFrm_NovaTransportadora.Btn_SistemaDataAtualClick(Sender: TObject);
begin
  MsEdt_SistemaDataCadastro.Text := TSistemaUtils.DataAtual;
end;

procedure TFrm_NovaTransportadora.ResetarConfiguracoes;
begin
  //Identificação Fiscal
  TCampoVisualUtils.LimparControle(MsEdt_IdentificacaoCNPJ);
  TCampoVisualUtils.LimparControle(Edt_IdentificacaoFiscalRS);
  TCampoVisualUtils.LimparControle(MsEdt_IdentificacaoInscricaoIE);

  //Endereço Fiscal
  TCampoVisualUtils.LimparControle(MsEdt_EnderecoCEP);
  TCampoVisualUtils.LimparControle(Edt_EnderecoMunicipio);
  TCampoVisualUtils.LimparControle(Edt_EnderecoBairro);
  TCampoVisualUtils.LimparControle(Edt_EnderecoLogradouro);
  TCampoVisualUtils.LimparControle(Edt_EnderecoNumero);
  TCampoVisualUtils.LimparControle(Edt_EnderecoCodigoIBGE);
  TCampoVisualUtils.LimparControle(Edt_EnderecoComplemento);
  TCampoVisualUtils.LimparControle(Cmbx_EnderecoUF);

  //Dados Fiscais
  TCampoVisualUtils.LimparControle(Edt_DadosObservacaoFiscal);
  TCampoVisualUtils.LimparControle(MsEdt_DadosAliquotaPadrao);

  //Sistema
  TCampoVisualUtils.LimparControle(MsEdt_SistemaDataCadastro);
  TCampoVisualUtils.LimparControle(Edt_SistemaResponsavel);

  //Contato
  TCampoVisualUtils.LimparControle(MsEdt_ContatoTelefone);
  TCampoVisualUtils.LimparControle(Edt_ContatoEmail);
  TCampoVisualUtils.LimparControle(Edt_ContatoResponsavel);


  //Resetar Posição do ScrollBox
  Scbx_NovaTransportadora.VertScrollBar.Position := 0;
end;

procedure TFrm_NovaTransportadora.SpeedButton1Click(Sender: TObject);
begin
 Frm_NovaFrota.Show;
end;

end.
