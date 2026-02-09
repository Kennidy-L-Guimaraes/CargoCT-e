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
    GroupBox3: TGroupBox;
    Panel3: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    GroupBox4: TGroupBox;
    Panel4: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    GroupBox5: TGroupBox;
    Panel5: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    ComboBox4: TComboBox;
    Edit14: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    ComboBox5: TComboBox;
    GroupBox6: TGroupBox;
    Panel6: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Edit18: TEdit;
    Edit19: TEdit;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    GroupBox7: TGroupBox;
    Panel7: TPanel;
    Label23: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    ComboBox9: TComboBox;
    Edit15: TEdit;
    Edit20: TEdit;
    Pnl_ConfiguracoesBtns: TPanel;
    Pnl_BtnSalvarConfiguracoes: TPanel;
    Shp_BtnSalvarConfiguracoes: TShape;
    Btn_BtnSalvarrConfiguracoes: TSpeedButton;
    Pnl_BtnCancelarConfiguracoes: TPanel;
    Shp_BtnCancelarConfiguracoes: TShape;
    Btn_BtnCancelarConfiguracoes: TSpeedButton;
    Pnl_IdentificacaoFiscalLogo: TPanel;
    Img_IdentificacaoLogo: TImage;
    Btn_IdentificacaoLogo: TButton;
    Image4: TImage;
    procedure Btn_BtnCancelarConfiguracoesClick(Sender: TObject);
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

procedure TFrm_NovaTransportadora.Btn_BtnCancelarConfiguracoesClick(
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

  //Resetar Posição do ScrollBox
  Scbx_NovaTransportadora.VertScrollBar.Position := 0;
end;

end.
