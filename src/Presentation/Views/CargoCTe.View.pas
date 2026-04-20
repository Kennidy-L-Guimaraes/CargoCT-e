unit CargoCTe.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls, RLReport, Vcl.Buttons, Vcl.Grids, Data.DB,
  Vcl.DBGrids, MenuNavigation.Utils, Vcl.WinXCtrls, Vcl.Imaging.pngimage,
  Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Comp.Client, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.Phys.SQLiteDef, FireDAC.Phys.SQLite, Config.UseCase, Config.Factory,
  Config.DTO, Design.Utils, HelpPanel.Helpers;

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
    Pnl_SubMenu: TPanel;
    Pnl_Ajuda: TPanel;
    Mem_Ajuda: TMemo;
    Lbl_Ajuda: TLabel;
    Pnl_BtnsNotas: TPanel;
    Pnl_BtnsNotasGerarNota: TPanel;
    Shp_NotaBtnsGerarNota: TShape;
    Pnl_NotasGerarNota: TSpeedButton;
    Pnl_BtnsNotasCancelarOperacao: TPanel;
    Shp_NotaBtnsCancelarOperacao: TShape;
    Btn_NotasCancelarOperacao: TSpeedButton;
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
    Lbl_DataEHora: TLabel;
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
    Img_TransportadorasBanner: TImage;
    Pnl_NotasEmitidasPesquisarNotas: TPanel;
    Srbx_PesquisarNotas: TSearchBox;
    Img_NotasEmitidasBanner: TImage;
    Pnl_Motoristas: TPanel;
    Img_MotoristasBanner: TImage;
    Pnl_MotoristasBusca: TPanel;
    Lbl_MotoristasBuscaTotalMotoristas: TLabel;
    Lbl_MotoristasBuscaTotalInativos: TLabel;
    Srbx_PesquisarMotoristas: TSearchBox;
    Dbgd_MotoristasRegistrados: TDBGrid;
    Pnl_MotoristasTopo: TPanel;
    Lbl_MotoristasTopo: TLabel;
    Pnl_BtnAdicionarVeiculo: TPanel;
    Shp_BtnAdicionarVeiculo: TShape;
    Btn_AdicionarVeiculo: TSpeedButton;
    Pnl_BtnAdicionarMotorista: TPanel;
    Shp_BtnAdicionarMotorista: TShape;
    Btn_AdicionarMotorista: TSpeedButton;
    TimerDataEHora: TTimer;
    Pnl_IdentificadorTomador: TPanel;
    Pnl_TomadorDeServico: TPanel;
    Lbl_TomadorTipoTomador: TLabel;
    Lbl_TomadorCpfCnpj: TLabel;
    Lbl_TomadorIE: TLabel;
    Lbl_TomadorNomeRS: TLabel;
    Lbl_TomadorCep: TLabel;
    Lbl_ReqTomadorInscricaoEstadual: TLabel;
    Lbl_ReqTomadorCEP: TLabel;
    Lbl_ReqTomadorNome: TLabel;
    Lbl_ReqTomadorTipoTomador: TLabel;
    Lbl_ReqTomadorCPF: TLabel;
    Edt_TomadorNome: TEdit;
    Cmbx_TipoTomador: TComboBox;
    MsEdt_TomadorCEP: TMaskEdit;
    MsEdt_TomadorIE: TMaskEdit;
    MsEdt_TomadorCpfCnpj: TMaskEdit;
    Pnl_IdentificacaoCte: TPanel;
    Lbl_IdentificacaoSerie: TLabel;
    Lbl_IdentificacaoNumero: TLabel;
    Lbl_IdentificacaoTipodeCte: TLabel;
    Lbl_IdentificacaoFinalidade: TLabel;
    Lbl_IdentificacaoModal: TLabel;
    Lbl_FormaDeEnvio: TLabel;
    Lbl_IdentificacaoCFOP: TLabel;
    Lbl_IdentificacaoCEP: TLabel;
    Lbl_ReqIdentificacaoSerie: TLabel;
    Lbl_ReqIdentificacaoNumero: TLabel;
    Lbl_ReqIdentificacaoTipoCte: TLabel;
    Lbl_ReqIdentificacaoFinalidade: TLabel;
    Lbl_ReqIdentificacaoModal: TLabel;
    Lbl_ReqIdentificacaoFormaEmissao: TLabel;
    Lbl_ReqIdentificacaoCFOP: TLabel;
    Lbl_ReqIdentificacaoCEP: TLabel;
    Edt_IdentificacaoSerie: TEdit;
    Edt_IdentificacaoNumero: TEdit;
    Edt_IdentificacaoFinalidade: TEdit;
    Cmbx_IdentificacaoTipodeCTe: TComboBox;
    Cmbx_Modal: TComboBox;
    Cmbx_FormaDeEmissao: TComboBox;
    Cmbx_CFOP: TComboBox;
    MsEdt_IdentificacaoCEP: TMaskEdit;
    Lbl_Identificacao: TLabel;
    Lbl_TomadorDeServico: TLabel;
    Pnl_Participantes: TPanel;
    Pnl_ParticipantesTransportadora: TPanel;
    Lbl_ParticipantesTransportadoraNomeRS: TLabel;
    Lbl_ParticipantesTransportadoraCpfCnpj: TLabel;
    Lbl_ParticipantesTransportadoraNFantasia: TLabel;
    Lbl_ParticipantesTransportadoraCEP: TLabel;
    Lbl_ParticipantesTransportadoraContato: TLabel;
    Lbl_ReqTransportadoraNomeFantasia: TLabel;
    Lbl_ReqTransportadoraCNPJ: TLabel;
    Lbl_ReqTransportadoraNome: TLabel;
    Edt_ParticipantesTransportadoraNomeRS: TEdit;
    Edt_ParticipantesTransportadoraCpfCnpj: TEdit;
    Edt_ParticipantesTransportadoraNFantasia: TEdit;
    Edt_ParticipantesTransportadoraCEP: TEdit;
    Edt_ParticipantesTransportadoraContato: TEdit;
    Lbl_ParticipantesTransportadoraEmitente: TLabel;
    Pnl_ParticipantesRemetente: TPanel;
    Lbl_ParticipantesRemetenteNomeRS: TLabel;
    Lbl_ParticipantesRemetenteCpfCnpj: TLabel;
    Lbl_ParticipantesRemetenteCEP: TLabel;
    Lbl_ParticipantesRemetenteEmail: TLabel;
    Lbl_ReqRemetenteCEP: TLabel;
    Lbl_ReqRemetenteNome: TLabel;
    Lbl_ReqRemetenteCPF: TLabel;
    Edt_ParticipantesRemetenteNomeRS: TEdit;
    Edt_ParticipantesRemetenteCpfCnpj: TEdit;
    Edt_ParticipantesRemetenteEmail: TEdit;
    MsEdt_ParticipantesRemetenteCEP: TMaskEdit;
    Lbl_ParticipantesRemetente: TLabel;
    Lbl_ParticipantesDestinatario: TLabel;
    Pnl_ParticipantesDestinatario: TPanel;
    Lbl_ParticipantesDestinatarioNomeRS: TLabel;
    Lbl_ParticipantesDestinatarioCpfCnpj: TLabel;
    Lbl_ParticipantesDestinatarioCEP: TLabel;
    Lbl_ParticipantesDestinatarioEmail: TLabel;
    Lbl_ReqDestinatarioCEP: TLabel;
    Lbl_ReqDestinatarioNome: TLabel;
    Lbl_ReqDestinatarioCPF: TLabel;
    Lbl_ReqDestinatarioEmail: TLabel;
    Edt_ParticipantesDestinatarioNomeRS: TEdit;
    Edt_ParticipantesDestinatarioCpfCnpj: TEdit;
    Edt_ParticipantesDestinatarioEmail: TEdit;
    MsEdt_ParticipantesDestinatarioCEP: TMaskEdit;
    Pnl_TransporteECarga: TPanel;
    Pnl_TransporteOrigem: TPanel;
    Lbl_TransporteOrigemCEP: TLabel;
    Lbl_TransporteOrigemTServico: TLabel;
    Lbl_ReqOrigemCEP: TLabel;
    Lbl_ReqOrigemTipoServico: TLabel;
    Cmbx_TransporteOrigemTServico: TComboBox;
    MsEdt_TransporteOrigemCEP: TMaskEdit;
    Lbl_TransporteOrigem: TLabel;
    Lbl_TransporteDestino: TLabel;
    Pnl_TransporteDestino: TPanel;
    Lbl_TransporteDestinoCEP: TLabel;
    Lbl_TransporteDestinoTServico: TLabel;
    Lbl_ReqDestinoCEP: TLabel;
    Lbl_ReqDestinoTipoServico: TLabel;
    Cmbx_TransporteDestinoTServico: TComboBox;
    MsEdt_TransporteDestinoCEP: TMaskEdit;
    Pnl_TransporteCarga: TPanel;
    Lbl_TransporteCargaProduto: TLabel;
    Lbl_TransporteCargaPesoBruto: TLabel;
    Lbl_TransporteCargaPesoCubado: TLabel;
    Lbl_TransporteCargaCubagem: TLabel;
    Lbl_TransporteCargaPesoKg: TLabel;
    Lbl_TransporteCargaPesoCubadoKg: TLabel;
    Lbl_TransporteCargaValorCarga: TLabel;
    Lbl_TransporteCargaValorSeguro: TLabel;
    Lbl_TransporteCargaQuantidade: TLabel;
    Lbl_TransporteCargaValorCargaPreco: TLabel;
    Lbl_TransporteCargaValorSeguroPreco: TLabel;
    Lbl_TransporteCargaQuantidadeUn: TLabel;
    Lbl_ReqCargaProduto: TLabel;
    Lbl_ReqCargaPesoBruto: TLabel;
    Lbl_ReqCargaPesoCubado: TLabel;
    Lbl_ReqCargaCubagem: TLabel;
    Lbl_ReqCargaValorCarga: TLabel;
    Lbl_ReqCargaQuantidade: TLabel;
    Lbl_ReqCargaValorSeguro: TLabel;
    Edt_TransporteCargaProduto: TEdit;
    Edt_TransporteCargaPesoBruto: TEdit;
    Edt_TransporteCargaPesoCubado: TEdit;
    Edt_TransporteCargaCubagem: TEdit;
    Edt_TransporteCargaValorCarga: TEdit;
    Edt_TransporteCargaValorSeguro: TEdit;
    Edt_TransporteCargaQuantidade: TEdit;
    Lbl_TransporteDadosDaCarga: TLabel;
    Pnl_DocumentosETaxas: TPanel;
    Pnl_DocumentosIdentificacao: TPanel;
    Pnl_DocumentosIdentificacaoBtnAdicionarDoc: TPanel;
    Shp_DocumentosIdentificacaoBtnAdicionarDoc: TShape;
    Btn_DocumentosIdentificacaoBtnAdicionarDoc: TSpeedButton;
    Dbg_DocumentosIdentificacaoCte: TDBGrid;
    Pnl_DocumentosTaxas: TPanel;
    Lbl_DocumentosTaxasValorFrete: TLabel;
    Lbl_DocumentosTaxasAviso: TLabel;
    Lbl_DocumentosTaxasPedagio: TLabel;
    Lbl_DocumentosTaxasDespacho: TLabel;
    Lbl_DocumentosTaxasSeguro: TLabel;
    Lbl_DocumentosTaxasOutros: TLabel;
    Lbl_DocumentosTaxasPedagioPrice: TLabel;
    Lbl_DocumentosTaxasValorFretePrice: TLabel;
    Lbl_DocumentosTaxasDespachoPrice: TLabel;
    Lbl_DocumentosTaxasSeguroPrice: TLabel;
    Lbl_DocumentosTaxasOutrosPrice: TLabel;
    Lbl_ReqValoresFrete: TLabel;
    Lbl_ReqValoresDespacho: TLabel;
    Lbl_ReqValoresPedagio: TLabel;
    Lbl_ReqValoresSeguro: TLabel;
    Lbl_ReqValoresOutros: TLabel;
    MsEdt_DocumentosTaxasValorFrete: TMaskEdit;
    MsEdt_DocumentosTaxasPedagio: TMaskEdit;
    MsEdt_DocumentosTaxasDespacho: TMaskEdit;
    MsEdt_DocumentosTaxasSeguro: TMaskEdit;
    MsEdt_DocumentosTaxasOutros: TMaskEdit;
    Lbl_DocumentosIdentificacaoCte: TLabel;
    Pnl_ImpostosEModal: TPanel;
    Lbl_ImpostosImpostos: TLabel;
    Lbl_ImpostosModal: TLabel;
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
    Lbl_ICMSStPercent: TLabel;
    Lbl_ImpostosImpostosICMSST: TLabel;
    Lbl_DesoneracaoPercent: TLabel;
    Lbl_ImpostosImpostosDesoneracao: TLabel;
    Edt_ImpostosImpostosBaseCalculo: TEdit;
    Edt_ImpostosImpostosCST: TEdit;
    Edt_ImpostosImpostosAliquota: TEdit;
    Edt_ImpostosImpostosICMS: TEdit;
    Edt_ImpostosImpostosREBase: TEdit;
    Edt_ImpostosImpostosICMSST: TEdit;
    Edt_ImpostosImpostosDesoneracao: TEdit;
    Pnl_ImpostosModal: TPanel;
    Lbl_ImpostosModalPlaca: TLabel;
    Lbl_ImpostosModalUfPlaca: TLabel;
    Lbl_ImpostosModalRenavam: TLabel;
    Lbl_ImpostosModalTara: TLabel;
    Lbl_ImpostosModalTRodado: TLabel;
    Lbl_ImpostosModalTCarroceria: TLabel;
    Lbl_ImpostosModalMotorista: TLabel;
    Lbl_ImpostosModalMotoristaCpfCnpj: TLabel;
    Lbl_ImpostosModalMotoristaNome: TLabel;
    Lbl_ReqVeiculoPlaca: TLabel;
    Lbl_ReqVeiculoTARA: TLabel;
    Lbl_ReqVeiculoPlacaUF: TLabel;
    Lbl_ReqVeiculoRENAVAM: TLabel;
    Lbl_ReqVeiculoMotoristaNome: TLabel;
    Lbl_ReqVeiculoMotoristaCPF: TLabel;
    Lbl_ReqVeiculoCarroceria: TLabel;
    Lbl_ReqVeiculoTipoRodado: TLabel;
    Edt_ImpostosModalPlaca: TEdit;
    Edt_ImpostosModalRenavam: TEdit;
    Edt_ImpostosModalTara: TEdit;
    Edt_ImpostosModalTRodado: TEdit;
    Edt_ImpostosModalTCarroceria: TEdit;
    Cmbx_ImpostosModalUfPlaca: TComboBox;
    Edt_ImpostosModaMotoristaNome: TEdit;
    Edt_ImpostosModalMotoristaCpfCnpj: TEdit;
    Pnl_Nota: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Btn_BtnNovaNotaClick(Sender: TObject);
    procedure Btn_NotasEmitidasClick(Sender: TObject);
    procedure Srbx_PesquisarTransportadoraClick(Sender: TObject);
    procedure Btn_TransportadoraClick(Sender: TObject);
    procedure Btn_MotoristasClick(Sender: TObject);
    procedure Btn_SairClick(Sender: TObject);
    procedure Btn_ConfiguracoesClick(Sender: TObject);
    procedure Btn_NovaTransportadoraClick(Sender: TObject);
    procedure Btn_AdicionarVeiculoClick(Sender: TObject);
    procedure TimerDataEHoraTimer(Sender: TObject);
    procedure Edt_IdentificacaoSerieClick(Sender: TObject);
    procedure Edt_IdentificacaoNumeroClick(Sender: TObject);
    procedure Cmbx_IdentificacaoTipodeCTeClick(Sender: TObject);
    procedure Edt_IdentificacaoFinalidadeClick(Sender: TObject);
    procedure Cmbx_ModalClick(Sender: TObject);
    procedure Cmbx_FormaDeEmissaoClick(Sender: TObject);
    procedure Cmbx_CFOPClick(Sender: TObject);
    procedure MsEdt_IdentificacaoCEPClick(Sender: TObject);
    procedure Cmbx_TipoTomadorClick(Sender: TObject);
    procedure Edt_TomadorNomeClick(Sender: TObject);
    procedure MsEdt_TomadorCpfCnpjClick(Sender: TObject);
    procedure MsEdt_TomadorCEPClick(Sender: TObject);
    procedure MsEdt_TomadorIEClick(Sender: TObject);
    procedure Edt_ParticipantesRemetenteNomeRSClick(Sender: TObject);
    procedure Edt_ParticipantesRemetenteCpfCnpjClick(Sender: TObject);
    procedure MsEdt_ParticipantesRemetenteCEPClick(Sender: TObject);
    procedure Edt_ParticipantesRemetenteEmailClick(Sender: TObject);
    procedure Edt_ParticipantesDestinatarioNomeRSClick(Sender: TObject);
    procedure Edt_ParticipantesDestinatarioCpfCnpjClick(Sender: TObject);
    procedure MsEdt_ParticipantesDestinatarioCEPClick(Sender: TObject);
    procedure Edt_ParticipantesDestinatarioEmailClick(Sender: TObject);
    procedure Edt_ParticipantesTransportadoraNomeRSClick(Sender: TObject);
    procedure Edt_ParticipantesTransportadoraNFantasiaClick(Sender: TObject);
    procedure Edt_ParticipantesTransportadoraCpfCnpjClick(Sender: TObject);
    procedure MsEdt_TransporteOrigemCEPClick(Sender: TObject);
    procedure Cmbx_TransporteOrigemTServicoClick(Sender: TObject);
    procedure MsEdt_TransporteDestinoCEPClick(Sender: TObject);
    procedure Cmbx_TransporteDestinoTServicoClick(Sender: TObject);
    procedure Edt_TransporteCargaProdutoClick(Sender: TObject);
    procedure Edt_TransporteCargaCubagemClick(Sender: TObject);
    procedure Edt_TransporteCargaQuantidadeClick(Sender: TObject);
    procedure Edt_TransporteCargaPesoBrutoClick(Sender: TObject);
    procedure Edt_TransporteCargaValorCargaClick(Sender: TObject);
    procedure Edt_TransporteCargaPesoCubadoClick(Sender: TObject);
    procedure Edt_TransporteCargaValorSeguroClick(Sender: TObject);
    procedure MsEdt_DocumentosTaxasValorFreteClick(Sender: TObject);
    procedure MsEdt_DocumentosTaxasDespachoClick(Sender: TObject);
    procedure MsEdt_DocumentosTaxasPedagioClick(Sender: TObject);
    procedure MsEdt_DocumentosTaxasSeguroClick(Sender: TObject);
    procedure MsEdt_DocumentosTaxasOutrosClick(Sender: TObject);
  private
    { Private declarations }
    FMenuService: TMenuNavigationUtils;

  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    //Procedures
    procedure AplicarConfiguracoesDesign; 
    procedure AplicarConfiguracoesSistema; 
    procedure AplicarConfiguracoesDB;
    procedure InicializarConfiguracoes;
  end;

var
  Frm_CargoCTe: TFrm_CargoCTe;

implementation

{$R *.dfm}

uses CargoCteConfig.View, CargoCteNovaTransportadora.View,
  CargoCteNovaFrota.View, Sistema.Utils;

{ TFrm_CargoCTe }

procedure TFrm_CargoCTe.AplicarConfiguracoesDB;
begin

end;

procedure TFrm_CargoCTe.AplicarConfiguracoesDesign;
var
 Usecase: TUsecaseConfig;
 Dto    : TDTOConfig;
 CorBase, CorBorda, CorFonte, CorFundo: TColor;
 Aba    : TTabSheet;
begin
  UseCase  := TConfigFactory.NovoUseCase;
  { Optei por não utilizar uma classe genérica com loop para aplicar estilos a todos os componentes,
    pois, apesar de automatizar, isso tornaria alterações de layout mais complicadas.
    Embora mais manual, este método permite alterações de layout de forma fácil, simples e direta. }

 try
  Dto := UseCase.Inicializar;
  CorBase  := StringToColor(Dto.CordosBotoes);
  CorFonte := StringToColor(Dto.CordaFonte);
  CorBorda := TDesign.DarkenColor(CorBase, 30);
  CorFundo := StringToColor(Dto.CordeFundo);

  //Cor dos Shapes 
  //Shp_BtnSair.Brush.Color               := StringToColor(Dto.CordosBotoes); -> Botão de maior atenção
  Shp_BtnNovaNota.Brush.Color           := CorBase;
  Shp_BtnMotoristas.Brush.Color         := CorBase;
  Shp_BtnTransportadoras.Brush.Color    := CorBase;
  Shp_BtnNotasEmitidas.Brush.Color      := CorBase;
  Shp_BtnConfiguracoes.Brush.Color      := CorBase;
  Shp_BtnClientes.Brush.Color           := CorBase;
  Shp_BtnNovaTransportadora.Brush.Color := CorBase;
  Shp_BtnAdicionarVeiculo.Brush.Color   := CorBase;
  Shp_BtnAdicionarMotorista.Brush.Color := CorBase;

  //Cor da borda dos TShapes -> Personalização futura
  //Shp_BtnSair.Brush.Color               := StringToColor(Dto.CordosBotoes); -> Botão de maior atenção
  Shp_BtnMotoristas.Pen.Color         := CorBorda;
  Shp_BtnTransportadoras.Pen.Color    := CorBorda;
  Shp_BtnNotasEmitidas.Pen.Color      := CorBorda;
  Shp_BtnConfiguracoes.Pen.Color      := CorBorda;
  Shp_BtnClientes.Pen.Color           := CorBorda;
  Shp_BtnNovaTransportadora.Pen.Color := CorBorda;
  Shp_BtnNovaNota.Pen.Color           := CorBorda;
  Shp_BtnAdicionarVeiculo.Pen.Color   := CorBorda;
  Shp_BtnAdicionarMotorista.Pen.Color := CorBorda;

  //Btn_Sair.Font.Color                   := StringToColor(Dto.CordaFonte); -> Botão de maior atenção
  Btn_NotasCancelarOperacao.Font.Color  := CorFonte;
  Btn_Motoristas.Font.Color             := CorFonte;
  Btn_Transportadora.Font.Color         := CorFonte;
  Btn_NotasEmitidas.Font.Color          := CorFonte;
  Btn_Configuracoes.Font.Color          := CorFonte;
  Btn_Clientes.Font.Color               := CorFonte;
  Btn_NovaTransportadora.Font.Color     := CorFonte;
  Btn_BtnNovaNota.Font.Color            := CorFonte;
  Btn_AdicionarVeiculo.Font.Color       := CorFonte;
  Btn_AdicionarMotorista.Font.Color     := CorFonte;
  Lbl_Logo.Font.Color                   := CorFonte;
  Lbl_DataEHora.Font.Color              := CorFonte;
  Lbl_Ajuda.Font.Color                  := CorFonte;
  Mem_Ajuda.Font.Color                  := CorFonte;


  //Cores de Fundo
  Pnl_Menu.Color        := CorFundo;
  Pnl_Background.Color  := CorFundo;
  Pnl_Content.Color     := CorFundo;
  Pnl_SubMenu.Color     := CorFundo;
  Pnl_Logo.Color        := CorFundo;
  Pnl_Ajuda.Color       := CorBorda;
  Mem_Ajuda.Color       := CorBorda;


  Pnl_NotaInfo.Color                := CorFundo;
  Pnl_IdentificacaoCte.Color        := CorFundo;
  Pnl_TomadorDeServico.Color        := CorFundo;
  Pnl_ParticipantesRemetente.Color  := CorFundo;
  Pnl_ParticipantesTransportadora.Color  := CorFundo;
  Pnl_ParticipantesDestinatario.Color    := CorFundo;
  Pnl_TransporteOrigem.Color        := CorFundo;
  Pnl_TransporteDestino.Color       := CorFundo;
  Pnl_TransporteCarga.Color         := CorFundo;
  Pnl_DocumentosTaxas.Color         := CorFundo;
  Pnl_ImpostosImpostos.Color        := CorFundo;
  Pnl_ImpostosModal.Color           := CorFundo;
  Pnl_DocumentosIdentificacao.Color := CorFundo;
  Pnl_DocumentosIdentificacaoBtnAdicionarDoc.Color := CorFundo;
  Pnl_NotasEmitidas.Color           := CorFundo;
  Pnl_Motoristas.Color              := CorFundo;
  Pnl_MotoristasBusca.Color         := CorFundo;
  Pnl_MotoristasTopo.Color          := CorFundo;
  Pnl_BtnNovaTransportadora.Color   := CorFundo;

  //Cores TabSheet
  Pnl_IdentificadorTomador.ParentBackground := False;
  Pnl_IdentificadorTomador.Color            := CorBorda;
  Pnl_IdentificadorTomador.Font.Color       := CorFonte;

  Pnl_Participantes.ParentBackground        := False;
  Pnl_Participantes.Color                   := CorBorda;
  Pnl_Participantes.Font.Color              := CorFonte;

  Pnl_TransporteECarga.ParentBackground     := False;
  Pnl_TransporteECarga.Color                := CorBorda;
  Pnl_TransporteECarga.Font.Color           := CorFonte;

  Pnl_DocumentosETaxas.ParentBackground     := False;
  Pnl_DocumentosETaxas.Color                := CorBorda;
  Pnl_DocumentosETaxas.Font.Color           := CorFonte;

  Pnl_ImpostosEModal.ParentBackground       := False;
  Pnl_ImpostosEModal.Color                  := CorBorda;
  Pnl_ImpostosEModal.Font.Color             := CorFonte;

  Pnl_Nota.ParentBackground                 := False;
  Pnl_Nota.Color                            := CorBorda;
  Pnl_Nota.Font.Color                       := CorFonte;
  Pnl_BtnsNotas.ParentBackground            := False;
  Pnl_BtnsNotas.Color                       := CorBorda;

  //Notas Emitidas
  Pnl_NotasEmitidasTotal.Color          := CorFundo;
  Pnl_NotasEmitidasTotalValor.Color     := CorBorda;
  Pnl_NotasEmitidasPesquisarNotas.Color := CorFundo;
  Lbl_NotasEmitidasTotal.Font.Color     := CorFonte;

  //Trasnportdoras registradas
  Pnl_Transportadoras.Color                   := CorFundo;
  Pnl_TransportadorasTopo.Color               := CorBorda;
  Pnl_TransportadorasSearch.Color             := CorBorda;
  Lbl_TransportadorasTopo.Font.Color          := CorFonte;
  Lbl_TransportadorasTotal.Font.Color         := CorFonte;
  Lbl_TransportadorasTotalInativas.Font.Color := CorFonte;

  //Motoristas
  Pnl_Motoristas.Color                          := CorFundo;
  Pnl_MotoristasTopo.Color                      := CorBorda;
  Pnl_MotoristasBusca.Color                     := CorBorda;
  Lbl_MotoristasTopo.Font.Color                 := CorFonte;
  Lbl_MotoristasBuscaTotalInativos.Font.Color   := CorFonte;
  Lbl_MotoristasBuscaTotalMotoristas.Font.Color := CorFonte;
 finally
  UseCase.Free;
 end;
end;

procedure TFrm_CargoCTe.InicializarConfiguracoes;
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
    AplicarConfiguracoesDB;
  end;
  finally
  UseCase.Free;
  end;
end;

procedure TFrm_CargoCTe.MsEdt_DocumentosTaxasDespachoClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Taxas_ValorDespacho);
end;

procedure TFrm_CargoCTe.MsEdt_DocumentosTaxasOutrosClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Taxas_ValorOutros);
end;

procedure TFrm_CargoCTe.MsEdt_DocumentosTaxasPedagioClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Taxas_ValorPedagio);
end;

procedure TFrm_CargoCTe.MsEdt_DocumentosTaxasSeguroClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Taxas_ValorSeguro);
end;

procedure TFrm_CargoCTe.MsEdt_DocumentosTaxasValorFreteClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Taxas_ValorFrete);
end;

procedure TFrm_CargoCTe.MsEdt_IdentificacaoCEPClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.IdentificacaoCTE_CEP);
end;

procedure TFrm_CargoCTe.MsEdt_ParticipantesDestinatarioCEPClick(
  Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Destinatario_CEP);
end;

procedure TFrm_CargoCTe.MsEdt_ParticipantesRemetenteCEPClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Remetente_CEP);
end;

procedure TFrm_CargoCTe.MsEdt_TomadorCEPClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Tomador_CEP);
end;

procedure TFrm_CargoCTe.MsEdt_TomadorCpfCnpjClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Tomador_CPF);
end;

procedure TFrm_CargoCTe.MsEdt_TomadorIEClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Tomador_InscricaoEstadual);
end;

procedure TFrm_CargoCTe.MsEdt_TransporteDestinoCEPClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Destino_CEP);
end;

procedure TFrm_CargoCTe.MsEdt_TransporteOrigemCEPClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Origem_CEP);
end;

procedure TFrm_CargoCTe.AplicarConfiguracoesSistema;
var
 Usecase: TUsecaseConfig;
 Dto    : TDTOConfig;
begin
   UseCase  := TConfigFactory.NovoUseCase;
   try
    Dto := UseCase.Inicializar;
    Img_MotoristasBanner.Visible        := Dto.ExibirBanners;
    Img_TransportadorasBanner.Visible   := Dto.ExibirBanners;
    Img_NotasEmitidasBanner.Visible     := Dto.ExibirBanners;
    Pnl_Ajuda.Visible                   := Dto.ExibirHelPanel;

   finally
    UseCase.Free;
   end;
end;

procedure TFrm_CargoCTe.Btn_AdicionarVeiculoClick(Sender: TObject);
begin
 Frm_NovaFrota.Show;
end;

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

procedure TFrm_CargoCTe.Cmbx_CFOPClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.IdentificacaoCTE_CFOP);
end;

procedure TFrm_CargoCTe.Cmbx_FormaDeEmissaoClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.IdentificacaoCTE_FormaDeEmissao);
end;

procedure TFrm_CargoCTe.Cmbx_IdentificacaoTipodeCTeClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.IdentificacaoCTE_TipoCte);
end;

procedure TFrm_CargoCTe.Cmbx_ModalClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.IdentificacaoCTE_Modal);
end;

procedure TFrm_CargoCTe.Cmbx_TipoTomadorClick(Sender: TObject);
begin
  Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Tomador_Tipo);
end;

procedure TFrm_CargoCTe.Cmbx_TransporteDestinoTServicoClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Destino_TipoDeServico);
end;

procedure TFrm_CargoCTe.Cmbx_TransporteOrigemTServicoClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Origem_TipoDeServico);
end;

constructor TFrm_CargoCTe.Create(AOwner: TComponent);
begin
  Inherited Create(AOwner);
  FMenuService := TMenuNavigationUtils.Create;
end;

destructor TFrm_CargoCTe.Destroy;
begin
  FMenuService.Free;
  inherited;
end;

procedure TFrm_CargoCTe.Edt_IdentificacaoFinalidadeClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.IdentificacaoCTE_Finalidade);
end;

procedure TFrm_CargoCTe.Edt_IdentificacaoNumeroClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.IdentificacaoCTE_Numero);
end;

procedure TFrm_CargoCTe.Edt_IdentificacaoSerieClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.IdentificacaoCTE_Serie);
end;

procedure TFrm_CargoCTe.Edt_ParticipantesDestinatarioCpfCnpjClick(
  Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Destinatario_CPFouCNPJ);
end;

procedure TFrm_CargoCTe.Edt_ParticipantesDestinatarioEmailClick(
  Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Destinatario_Email);
end;

procedure TFrm_CargoCTe.Edt_ParticipantesDestinatarioNomeRSClick(
  Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Destinatario_NOMEouRS);
end;

procedure TFrm_CargoCTe.Edt_ParticipantesRemetenteCpfCnpjClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Remetente_CPFouCNPJ);
end;

procedure TFrm_CargoCTe.Edt_ParticipantesRemetenteEmailClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Remetente_Email);
end;

procedure TFrm_CargoCTe.Edt_ParticipantesRemetenteNomeRSClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Remetente_NOMEouRS);
end;

procedure TFrm_CargoCTe.Edt_ParticipantesTransportadoraCpfCnpjClick(
  Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.TransportadoraEmitente_CPFouCNPJ);
end;

procedure TFrm_CargoCTe.Edt_ParticipantesTransportadoraNFantasiaClick(
  Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.TransportadoraEmitente_NomeFantasia);
end;

procedure TFrm_CargoCTe.Edt_ParticipantesTransportadoraNomeRSClick(
  Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.TransportadoraEmitente_NOMEouRS);
end;

procedure TFrm_CargoCTe.Edt_TomadorNomeClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.Tomador_Nome);
end;

procedure TFrm_CargoCTe.Edt_TransporteCargaCubagemClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.DadosDaCarga_Cubagem);
end;

procedure TFrm_CargoCTe.Edt_TransporteCargaPesoBrutoClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.DadosDaCarga_PesoBruto);
end;

procedure TFrm_CargoCTe.Edt_TransporteCargaPesoCubadoClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.DadosDaCarga_PesoCubado);
end;

procedure TFrm_CargoCTe.Edt_TransporteCargaProdutoClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.DadosDaCarga_Produto);
end;

procedure TFrm_CargoCTe.Edt_TransporteCargaQuantidadeClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.DadosDaCarga_Quantidade);
end;

procedure TFrm_CargoCTe.Edt_TransporteCargaValorCargaClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.DadosDaCarga_ValorDaCarga);
end;

procedure TFrm_CargoCTe.Edt_TransporteCargaValorSeguroClick(Sender: TObject);
begin
 Mem_Ajuda.Clear;
 Mem_Ajuda.Lines.Add(THelpPanel.DadosDaCarga_ValorDoSeguro);
end;

procedure TFrm_CargoCTe.FormCreate(Sender: TObject);
begin
//Registra os Panels para o Menu
  FMenuService.RegisterPanel(Pnl_NotaInfo);
  FMenuService.RegisterPanel(Pnl_NotasEmitidas);
  FMenuService.RegisterPanel(Pnl_Transportadoras);
  FMenuService.RegisterPanel(Pnl_Motoristas);
  InicializarConfiguracoes;
end;

procedure TFrm_CargoCTe.Srbx_PesquisarTransportadoraClick(Sender: TObject);
begin
Srbx_PesquisarTransportadora.Text := '';
end;

procedure TFrm_CargoCTe.TimerDataEHoraTimer(Sender: TObject);
begin
 Lbl_DataEHora.Caption := TSistemaUtils.DataHoraAtual;
end;

end.
