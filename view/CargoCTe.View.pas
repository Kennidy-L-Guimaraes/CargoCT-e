unit CargoCTe.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls, RLReport, Vcl.Buttons, Vcl.Grids, Data.DB,
  Vcl.DBGrids, MenuNavigationService, Vcl.WinXCtrls, Vcl.Imaging.pngimage;

type
  // PADRÃO DE NOMENCLATURA
  // <Tipo>_<Dominio><Contexto><Campo>
  // Ex: Edt_DestinatarioEmail
  // Ex: Chbx_VerificacaoDestinatarioEmail
  // Não abreviar domínio
  // Não misturar idiomas
  TFrm_CargoCTe = class(TForm)
    Pnl_Background: TPanel;
    Pnl_Menu: TPanel;
    Pnl_Content: TPanel;
    Pnl_Logo: TPanel;
    Pnl_NotaInfo: TPanel;
    Pgc_NotaInfo: TPageControl;
    Tbsh_IdentificacaoETomador: TTabSheet;
    Tbsh_Participantes: TTabSheet;
    Tbsh_TransporteECarga: TTabSheet;
    Tbsh_DocumentosETaxas: TTabSheet;
    Tbsh_ImpostosEModal: TTabSheet;
    Tbsh_Nota: TTabSheet;
    Pnl_IdentificacaoCte: TPanel;
    Pnl_TomadorDeServico: TPanel;
    Lbl_Identificacao: TLabel;
    Lbl_TomadorDeServico: TLabel;
    Pnl_SubMenu: TPanel;
    Edt_IdentificacaoSerie: TEdit;
    Edt_IdentificacaoNumero: TEdit;
    Edt_IdentificacaoFinalidade: TEdit;
    Edt_IdentificacaoCEP: TEdit;
    Lbl_IdentificacaoSerie: TLabel;
    Lbl_IdentificacaoNumero: TLabel;
    Lbl_IdentificacaoTipodeCte: TLabel;
    Lbl_IdentificacaoFinalidade: TLabel;
    Lbl_IdentificacaoModal: TLabel;
    Lbl_FormaDeEnvio: TLabel;
    Lbl_IdentificacaoCFOP: TLabel;
    Lbl_IdentificacaoCEP: TLabel;
    Lbl_TomadorTipoTomador: TLabel;
    Lbl_TomadorCpfCnpj: TLabel;
    Lbl_TomadorIE: TLabel;
    Lbl_TomadorNomeRS: TLabel;
    Lbl_TomadorCep: TLabel;
    Edt_TomadorCpfCnpj: TEdit;
    Edt_TomadorIE: TEdit;
    Edt_TomadorNome: TEdit;
    Edt_TomadorCEP: TEdit;
    Pnl_ParticipantesRemetente: TPanel;
    Lbl_ParticipantesRemetenteNomeRS: TLabel;
    Lbl_ParticipantesRemetenteCpfCnpj: TLabel;
    Lbl_ParticipantesRemetenteCEP: TLabel;
    Edt_ParticipantesRemetenteNomeRS: TEdit;
    Edt_ParticipantesRemetenteCpfCnpj: TEdit;
    Edt_ParticipantesRemetenteCEP: TEdit;
    Lbl_ParticipantesRemetente: TLabel;
    Pnl_ParticipantesTransportadora: TPanel;
    Lbl_ParticipantesTransportadoraNomeRS: TLabel;
    Lbl_ParticipantesTransportadoraCpfCnpj: TLabel;
    Edt_ParticipantesTransportadoraNomeRS: TEdit;
    Edt_ParticipantesTransportadoraCpfCnpj: TEdit;
    Lbl_ParticipantesTransportadoraEmitente: TLabel;
    Lbl_ParticipantesDestinatario: TLabel;
    Lbl_ParticipantesRemetenteEmail: TLabel;
    Edt_ParticipantesRemetenteEmail: TEdit;
    Pnl_ParticipantesDestinatario: TPanel;
    Lbl_ParticipantesDestinatarioNomeRS: TLabel;
    Lbl_ParticipantesDestinatarioCpfCnpj: TLabel;
    Lbl_ParticipantesDestinatarioCEP: TLabel;
    Lbl_ParticipantesDestinatarioEmail: TLabel;
    Edt_ParticipantesDestinatarioNomeRS: TEdit;
    Edt_ParticipantesDestinatarioCpfCnpj: TEdit;
    Edt_ParticipantesDestinatarioCEP: TEdit;
    Edt_ParticipantesDestinatarioEmail: TEdit;
    Edt_ParticipantesTransportadoraNFantasia: TEdit;
    Lbl_ParticipantesTransportadoraNFantasia: TLabel;
    Edt_ParticipantesTransportadoraCEP: TEdit;
    Lbl_ParticipantesTransportadoraCEP: TLabel;
    Lbl_ParticipantesTransportadoraContato: TLabel;
    Edt_ParticipantesTransportadoraContato: TEdit;
    Pnl_TransporteOrigem: TPanel;
    Lbl_TransporteOrigemCEP: TLabel;
    Lbl_TransporteOrigemTServico: TLabel;
    Edt_TransporteOrigemCEP: TEdit;
    Lbl_TransporteOrigem: TLabel;
    Pnl_TransporteDestino: TPanel;
    Lbl_TransporteDestinoCEP: TLabel;
    Lbl_TransporteDestinoTServico: TLabel;
    Edt_TransporteDestinoCEP: TEdit;
    Pnl_TransporteCarga: TPanel;
    Lbl_TransporteCargaProduto: TLabel;
    Lbl_TransporteCargaPesoBruto: TLabel;
    Lbl_TransporteCargaPesoCubado: TLabel;
    Lbl_TransporteCargaCubagem: TLabel;
    Edt_TransporteCargaProduto: TEdit;
    Edt_TransporteCargaPesoBruto: TEdit;
    Edt_TransporteCargaPesoCubado: TEdit;
    Edt_TransporteCargaCubagem: TEdit;
    Lbl_TransporteDadosDaCarga: TLabel;
    Lbl_TransporteCargaPesoKg: TLabel;
    Lbl_TransporteCargaPesoCubadoKg: TLabel;
    Lbl_TransporteCargaValorCarga: TLabel;
    Edt_TransporteCargaValorCarga: TEdit;
    Lbl_TransporteCargaValorSeguro: TLabel;
    Edt_TransporteCargaValorSeguro: TEdit;
    Lbl_TransporteCargaQuantidade: TLabel;
    Edt_TransporteCargaQuantidade: TEdit;
    Lbl_TransporteCargaValorCargaPreco: TLabel;
    Lbl_TransporteCargaValorSeguroPreco: TLabel;
    Lbl_TransporteCargaQuantidadeUn: TLabel;
    Lbl_DocumentosIdentificacaoCte: TLabel;
    Lbl_DocumentosTaxas: TLabel;
    Pnl_DocumentosTaxas: TPanel;
    Lbl_DocumentosTaxasValorFrete: TLabel;
    Lbl_DocumentosTaxasAviso: TLabel;
    Lbl_DocumentosTaxasPedagio: TLabel;
    Lbl_DocumentosTaxasDespacho: TLabel;
    Lbl_DocumentosTaxasSeguro: TLabel;
    Lbl_DocumentosTaxasOutros: TLabel;
    Edt_DocumentosTaxasPedagio: TEdit;
    Lbl_DocumentosTaxasPedagioPrice: TLabel;
    Edt_DocumentosTaxasValorFrete: TEdit;
    Lbl_DocumentosTaxasValorFretePrice: TLabel;
    Edt_DocumentosTaxasDespacho: TEdit;
    Lbl_DocumentosTaxasDespachoPrice: TLabel;
    Edt_DocumentosTaxasSeguro: TEdit;
    Lbl_DocumentosTaxasSeguroPrice: TLabel;
    Edt_DocumentosTaxasOutros: TEdit;
    Lbl_DocumentosTaxasOutrosPrice: TLabel;
    Pnl_ImpostosImpostos: TPanel;
    Lbl_ImpostosImpostosCST: TLabel;
    Lbl_ImpostosImpostosAtencao: TLabel;
    Lbl_ImpostosImpostosBaseCalculo: TLabel;
    Lbl_ImpostosImpostosAliquota: TLabel;
    Lbl_ImpostosImpostosICMS: TLabel;
    Lbl_ImpostosImpostosReBase: TLabel;
    Lbl_BaseCalculoPercent: TLabel;
    Lbl_CSTPercent: TLabel;
    Lbl_AliquotaPercent: TLabel;
    Lbl_ICMSPercent: TLabel;
    Lbl_ReBasePercent: TLabel;
    Edt_ImpostosImpostosBaseCalculo: TEdit;
    Edt_ImpostosImpostosCST: TEdit;
    Edt_ImpostosImpostosAliquota: TEdit;
    Edt_ImpostosImpostosICMS: TEdit;
    Edt_ImpostosImpostosREBase: TEdit;
    Lbl_ImpostosImpostos: TLabel;
    Lbl_ICMSStPercent: TLabel;
    Edt_ImpostosImpostosICMSST: TEdit;
    Lbl_ImpostosImpostosICMSST: TLabel;
    Lbl_DesoneracaoPercent: TLabel;
    Edt_ImpostosImpostosDesoneracao: TEdit;
    Lbl_ImpostosImpostosDesoneracao: TLabel;
    Pnl_ImpostosModal: TPanel;
    Lbl_ImpostosModalPlaca: TLabel;
    Lbl_ImpostosModalUfPlaca: TLabel;
    Lbl_ImpostosModalRenavam: TLabel;
    Lbl_ImpostosModalTara: TLabel;
    Lbl_ImpostosModalTRodado: TLabel;
    Lbl_ImpostosModalTCarroceria: TLabel;
    Edt_ImpostosModalPlaca: TEdit;
    Edt_ImpostosModalRenavam: TEdit;
    Edt_ImpostosModalTara: TEdit;
    Edt_ImpostosModalTRodado: TEdit;
    Edt_ImpostosModalTCarroceria: TEdit;
    Lbl_ImpostosModal: TLabel;
    Cmbx_ImpostosModalUfPlaca: TComboBox;
    Lbl_ImpostosModalMotorista: TLabel;
    Lbl_ImpostosModalMotoristaCpfCnpj: TLabel;
    Edt_ImpostosModaMotoristaNome: TEdit;
    Lbl_ImpostosModalMotoristaNome: TLabel;
    Edt_ImpostosModalMotoristaCpfCnpj: TEdit;
    Pnl_Ajuda: TPanel;
    Mem_Ajuda: TMemo;
    Lbl_Ajuda: TLabel;
    Pnl_NotaBtns: TPanel;
    Pnl_NotaBtnsGerarNota: TPanel;
    Shp_NotaBtnsGerarNota: TShape;
    Btn_NotaBtnsGerarNota: TSpeedButton;
    Pnl_NotaBtnsCancelarOperacao: TPanel;
    Shp_NotaBtnsCancelarOperacao: TShape;
    Btn_NotaBtnsCancelarOperacao: TSpeedButton;
    Pnl_BtnSair: TPanel;
    Shp_BtnSair: TShape;
    Btn_Sair: TSpeedButton;
    Pnl_BtnMotoristas: TPanel;
    Shp_BtnMotoristas: TShape;
    Btn_Motoristas: TSpeedButton;
    Pnl_BtnTransportadoras: TPanel;
    Shp_BtnTransportadoras: TShape;
    Btn_Transportadora: TSpeedButton;
    Pnl_BtnNotasEmitidas: TPanel;
    Shp_BtnNotasEmitidas: TShape;
    Btn_NotasEmitidas: TSpeedButton;
    Pnl_BtnConfiguracoes: TPanel;
    Shp_BtnConfiguracoes: TShape;
    Btn_Configuracoes: TSpeedButton;
    Pnl_BtnClientes: TPanel;
    Shp_BtnClientes: TShape;
    Btn_Clientes: TSpeedButton;
    Img_Logo: TImage;
    Pnl_BtnNovaTransportadora: TPanel;
    Shp_BtnNovaTransportadora: TShape;
    Btn_NovaTransportadora: TSpeedButton;
    Lbl_Logo: TLabel;
    Lbl_FraseLogo: TLabel;
    Cmbx_IdentificacaoTipodeCTe: TComboBox;
    Cmbx_Modal: TComboBox;
    Cmbx_FormaDeEmissao: TComboBox;
    Cmbx_CFOP: TComboBox;
    Cmbx_TipoTomador: TComboBox;
    Cmbx_TransporteOrigemTServico: TComboBox;
    Cmbx_TransporteDestinoTServico: TComboBox;
    Pnl_DocumentosIdentificacao: TPanel;
    Pnl_DocumentosIdentificacaoBtnAdicionarDoc: TPanel;
    Shp_DocumentosIdentificacaoBtnAdicionarDoc: TShape;
    Btn_DocumentosIdentificacaoBtnAdicionarDoc: TSpeedButton;
    Lbl_TransporteDestino: TLabel;
    Dbg_DocumentosIdentificacaoCte: TDBGrid;
    Pnl_NotasEmitidas: TPanel;
    Pnl_NotasEmitidasTotal: TPanel;
    Lbl_NotasEmitidasTotal: TLabel;
    Pnl_NotasEmitidasTotalValor: TPanel;
    Lbl_NotasEmitidasTotalValor: TLabel;
    Dbgd_NotasEmitidas: TDBGrid;
    Pnl_BtnNovaNota: TPanel;
    Shp_BtnNovaNota: TShape;
    Btn_BtnNovaNota: TSpeedButton;
    Pnl_Transportadoras: TPanel;
    Pnl_TransportadorasSearch: TPanel;
    Dbgd_Transportadoras: TDBGrid;
    Pnl_TransportadorasTopo: TPanel;
    Lbl_TransportadorasTopo: TLabel;
    Lbl_TransportadorasTotal: TLabel;
    Lbl_TransportadorasTotalInativas: TLabel;
    Srbx_PesquisarTransportadora: TSearchBox;
    Img_Transportadoras: TImage;
    Pnl_NotasEmitidasPesquisarNotas: TPanel;
    Srbx_PesquisarNotas: TSearchBox;
    Img_NotasEmitidas: TImage;
    Pnl_Motoristas: TPanel;
    Img_Motoristas: TImage;
    Pnl_MotoristasBusca: TPanel;
    Lbl_MotoristasBuscaTotalMotoristas: TLabel;
    Lbl_MotoristasBuscaTotalInativos: TLabel;
    Srbx_PesquisarMotoristas: TSearchBox;
    Dbgd_MotoristasRegistrados: TDBGrid;
    Pnl_MotoristasTopo: TPanel;
    Lbl_MotoristasTopo: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Btn_BtnNovaNotaClick(Sender: TObject);
    procedure Btn_NotasEmitidasClick(Sender: TObject);
    procedure Srbx_PesquisarTransportadoraClick(Sender: TObject);
    procedure Btn_TransportadoraClick(Sender: TObject);
    procedure Btn_MotoristasClick(Sender: TObject);
    procedure Btn_SairClick(Sender: TObject);
    procedure Btn_ConfiguracoesClick(Sender: TObject);
    procedure Btn_NovaTransportadoraClick(Sender: TObject);
  private
    { Private declarations }
    FMenuService: TMenuNavigationService;

  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  Frm_CargoCTe: TFrm_CargoCTe;

implementation

{$R *.dfm}

uses CargoCteConfig.View, CargoCteNovaTransportadora.View;

{ TFrm_CargoCTe }

procedure TFrm_CargoCTe.Btn_BtnNovaNotaClick(Sender: TObject);
begin
 FMenuService.ActivePanel(Pnl_NotaInfo);
end;

procedure TFrm_CargoCTe.Btn_ConfiguracoesClick(Sender: TObject);
begin
  Frm_CargoCteConfig.Show;
end;

procedure TFrm_CargoCTe.Btn_MotoristasClick(Sender: TObject);
begin
  FMenuService.ActivePanel(Pnl_Motoristas);
end;

procedure TFrm_CargoCTe.Btn_NotasEmitidasClick(Sender: TObject);
begin
  FMenuService.ActivePanel(Pnl_NotasEmitidas);
end;


procedure TFrm_CargoCTe.Btn_NovaTransportadoraClick(Sender: TObject);
begin
  Frm_NovaTransportadora.Show;
end;

procedure TFrm_CargoCTe.Btn_SairClick(Sender: TObject);
begin
 Frm_CargoCTe.Close;
end;

procedure TFrm_CargoCTe.Btn_TransportadoraClick(Sender: TObject);
begin
FMenuService.ActivePanel(Pnl_Transportadoras);
end;

constructor TFrm_CargoCTe.Create(AOwner: TComponent);
begin
  Inherited Create(AOwner);
  FMenuService := TMenuNavigationService.Create;
end;

destructor TFrm_CargoCTe.Destroy;
begin
  FMenuService.Free;
  inherited;
end;

procedure TFrm_CargoCTe.FormCreate(Sender: TObject);
begin
FMenuService.RegisterPanel(Pnl_NotaInfo);
FMenuService.RegisterPanel(Pnl_NotasEmitidas);
FMenuService.RegisterPanel(Pnl_Transportadoras);
FMenuService.RegisterPanel(Pnl_Motoristas);
end;

procedure TFrm_CargoCTe.Srbx_PesquisarTransportadoraClick(Sender: TObject);
begin
Srbx_PesquisarTransportadora.Text := '';
end;

end.
