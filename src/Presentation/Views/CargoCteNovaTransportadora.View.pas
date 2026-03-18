unit CargoCteNovaTransportadora.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtDlgs, Vcl.Imaging.jpeg, Vcl.Mask, Transportadora.DTO,
  Transportadora.DB.SQLite, NovaTransportadora.UseCase, ConfiguracaoSistema.Db;

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
    Lbl_ContatoSite: TLabel;
    Edt_ContatoEmail: TEdit;
    Edt_ContatoSite: TEdit;
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
    Lbl_ReqCNPJ: TLabel;
    MsEdt_IdentificacaoCNPJ: TMaskEdit;
    MsEdt_IdentificacaoInscricaoIE: TMaskEdit;
    Lbl_ReqRazaoSocial: TLabel;
    Lbl_ReqInscricaoEstadual: TLabel;
    Lbl_ReqRegimeTributario: TLabel;
    MsEdt_EnderecoCEP: TMaskEdit;
    Lbl_ReqCEP: TLabel;
    Cmbx_EnderecoUF: TComboBox;
    Lbl_ReqCodigoIBGE: TLabel;
    Lbl_ReqNumero: TLabel;
    Lbl_ReqPapelCTe: TLabel;
    Lbl_ReqObservacaoFiscal: TLabel;
    Lbl_ReqAliquotaPadrao: TLabel;
    Lbl_ReqTipoTributacao: TLabel;
    Lbl_ReqTipoTransporte: TLabel;
    Lbl_ReqTipoOperacao: TLabel;
    MsEdt_SistemaDataCadastro: TMaskEdit;
    Lbl_ReqStatus: TLabel;
    Lbl_ReqResponsavel: TLabel;
    MsEdt_DadosAliquotaPadrao: TMaskEdit;
    MsEdt_ContatoTelefone: TMaskEdit;
    Lbl_ReqTelefone: TLabel;
    Lbl_ReqContatoResponsavel: TLabel;
    procedure Btn_CancelarNovaTransportadoraClick(Sender: TObject);

    procedure SpeedButton1Click(Sender: TObject);
    procedure Btn_SalvarNovaTransportadoraClick(Sender: TObject);
    procedure Btn_SistemaDataAtualClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    //Procedures
    procedure ResetarConfiguracoes;
    procedure PreencherDTO(var ADTO: TTransportadoraDTO);
    procedure PreencherDTOFAKE(var ADTO: TTransportadoraDTO);
    procedure UseCaseNovaTransportadora;
  private
    { Private declarations }
    var
    FDTO    : TTransportadoraDTO;

  public
    { Public declarations }
  end;



var
  Frm_NovaTransportadora: TFrm_NovaTransportadora;
  CAMINHO_SQLITE        : string;
implementation

{$R *.dfm}

uses CampoVisual.Utils, CargoCteNovaFrota.View, Sistema.Utils,
  DadosFiscais.Entidade, DadosOperacionais.Entidade, Endereco.Entidade,
  IdentidadeFiscal.Entidade, IdentidadeFiscal.Tipo.CNPJ,
  SistemaOperacional.Entidade, Transportadora.Entidade, Veiculo.Entidade,
  Endereco.Tipo.CEP,
  TransportadoraContato.Entidade;

procedure TFrm_NovaTransportadora.Btn_CancelarNovaTransportadoraClick(
  Sender: TObject);
begin
  ResetarConfiguracoes;
  Frm_NovaTransportadora.Close;
end;

procedure TFrm_NovaTransportadora.Btn_SalvarNovaTransportadoraClick(
  Sender: TObject);
 begin
  //Realiza a limpeza dos campos
  PreencherDTOFAKE(FDTO); //Preenche o DTO -> UseCaseCadastrarTransportadora ->...
  UseCaseNovaTransportadora; //Salva a Nova Transportadora
  ResetarConfiguracoes;// Reseta configurações
end;

procedure TFrm_NovaTransportadora.Btn_SistemaDataAtualClick(Sender: TObject);
begin
  MsEdt_SistemaDataCadastro.Text := TSistemaUtils.DataAtual;
end;

procedure TFrm_NovaTransportadora.FormCreate(Sender: TObject);
begin
   //Configurações Iniciais Aplica a Data atual
  MsEdt_SistemaDataCadastro.Text := TSistemaUtils.DataAtual;
end;

procedure TFrm_NovaTransportadora.PreencherDTO(var ADTO: TTransportadoraDTO);
begin
   // Identificação Fiscal
  ADTO.CNPJ               := MsEdt_IdentificacaoCNPJ.Text;
  ADTO.RazaoSocial        := Edt_IdentificacaoFiscalRS.Text;
  ADTO.InscricaoEstadual  := MsEdt_IdentificacaoInscricaoIE.Text;
  ADTO.RegimeTributario   := Cmbx_IdentificacaoRegimeTribu.Text;
  // Endereço
  ADTO.CEP                := MsEdt_EnderecoCEP.Text;
  ADTO.Municipio          := Edt_EnderecoMunicipio.Text;
  ADTO.Bairro             := Edt_EnderecoBairro.Text;
  ADTO.Logradouro         := Edt_EnderecoLogradouro.Text;
  ADTO.CodigoIBGE         := Edt_EnderecoCodigoIBGE.Text;
  ADTO.Complemento        := Edt_EnderecoComplemento.Text;
  ADTO.EstadoUF           := Cmbx_EnderecoUF.Text;
  ADTO.Numero             := Edt_EnderecoNumero.Text;
  // Dados Fiscais
  ADTO.PapelCTe           := Cmbx_DadosPapelCTe.Text;
  ADTO.TipoTributacao     := Cmbx_DadosTipoTributacao.Text;
  ADTO.ObservacaoFiscal   := Edt_DadosObservacaoFiscal.Text;
  ADTO.Aliquota := StrToCurrDef(StringReplace(MsEdt_DadosAliquotaPadrao.Text, '.', ',', [rfReplaceAll]),0);

  // Dados Operacionais
  ADTO.TipoTransporte     := Cmbx_DadosOperacionaisTipoDeTransporte.Text;
  ADTO.TipoOperacao       := Cmbx_DadosOperacionaisTipoDeOperacao.Text;
  // Sistema
  ADTO.Status             := Cmbx_SistemaStatus.Text;
  ADTO.Responsavel        := Edt_SistemaResponsavel.Text;
  ADTO.DataCadastro       := MsEdt_SistemaDataCadastro.Text;
  // Contato
  ADTO.Telefone           := MsEdt_ContatoTelefone.Text;
  ADTO.Site               := Edt_ContatoSite.Text;
  ADTO.Email              := Edt_ContatoEmail.Text;
end;

procedure TFrm_NovaTransportadora.PreencherDTOFAKE(
  var ADTO: TTransportadoraDTO);
begin
 // Identificação Fiscal
  ADTO.CNPJ              := '12.345.678/0001-95'; // Formato válido com máscara
  ADTO.RazaoSocial       := 'Transportadora Atlas Logística LTDA';
  ADTO.InscricaoEstadual := '123.456.789.112';
  ADTO.RegimeTributario  := 'Simples Nacional';

  // Endereço
  ADTO.CEP         := '88000-000'; // Formato válido
  ADTO.Municipio   := 'Florianópolis';
  ADTO.Bairro      := 'Centro';
  ADTO.Logradouro  := 'Rua das Palmeiras';
  ADTO.CodigoIBGE  := '4205407'; // Código real de Florianópolis
  ADTO.Complemento := 'Sala 305';
  ADTO.EstadoUF    := 'SC';
  ADTO.Numero      := '1234';

  // Dados Fiscais
  ADTO.PapelCTe         := 'Emitente';
  ADTO.TipoTributacao   := 'Normal';
  ADTO.ObservacaoFiscal := 'Empresa optante pelo regime simplificado.';
  ADTO.Aliquota         := 12.50; // Já como Currency

  // Dados Operacionais
  ADTO.TipoTransporte := 'Rodoviário';
  ADTO.TipoOperacao   := 'Estadual';

  // Sistema
  ADTO.Status        := 'Ativo';
  ADTO.Responsavel   := 'João da Silva';
  ADTO.DataCadastro  := '18/03/2026'; // Formato coerente com MaskEdit

  // Contato
  ADTO.Telefone := '(48) 99999-1234';
  ADTO.Site     := 'https://www.atlaslogistica.com.br';
  ADTO.Email    := 'contato@atlaslogistica.com.br';

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
  TCampoVisualUtils.LimparControle(Edt_ContatoSite);


  //Resetar Posição do ScrollBox
  Scbx_NovaTransportadora.VertScrollBar.Position := 0;
end;

procedure TFrm_NovaTransportadora.SpeedButton1Click(Sender: TObject);
begin
 Frm_NovaFrota.Show;
end;

procedure TFrm_NovaTransportadora.UseCaseNovaTransportadora;
var
  UseCase    : TUseCaseNovaTransportadora;
  Repository : TTransportadoraDBSQLite;
begin
  CAMINHO_SQLITE := TConfiguracaoSistema.ObterCaminhoBanco;
  Repository := TTransportadoraDBSQLite.Create(CAMINHO_SQLITE);
  UseCase    := TUseCaseNovaTransportadora.Create(Repository);
  try
    try
      UseCase.Executar(FDTO);
      ShowMessage('Transportadora cadastrada com sucesso!');
    except
      on E: Exception do
        ShowMessage(E.Message);
    end;
  finally
    UseCase.Free;
  end;
end;

end.
