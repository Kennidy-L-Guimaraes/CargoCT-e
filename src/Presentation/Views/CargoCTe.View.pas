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
  Config.DTO;

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
    Pnl_TransporteOrigem: TPanel;
    Lbl_TransporteOrigemCEP: TLabel;
    Lbl_TransporteOrigemTServico: TLabel;
    Lbl_TransporteOrigem: TLabel;
    Pnl_TransporteDestino: TPanel;
    Lbl_TransporteDestinoCEP: TLabel;
    Lbl_TransporteDestinoTServico: TLabel;
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
    Pnl_BtnAdicionarVeiculo: TPanel;
    Shp_BtnAdicionarVeiculo: TShape;
    Btn_AdicionarVeiculo: TSpeedButton;
    Pnl_BtnAdicionarMotorista: TPanel;
    Shp_BtnAdicionarMotorista: TShape;
    Btn_AdicionarMotorista: TSpeedButton;
    TimerDataEHora: TTimer;
    Lbl_ReqCargaProduto: TLabel;
    Lbl_ReqCargaPesoBruto: TLabel;
    Lbl_ReqCargaPesoCubado: TLabel;
    Lbl_ReqCargaCubagem: TLabel;
    Lbl_ReqCargaValorCarga: TLabel;
    Lbl_ReqCargaQuantidade: TLabel;
    Lbl_ReqCargaValorSeguro: TLabel;
    MsEdt_TransporteOrigemCEP: TMaskEdit;
    MsEdt_TransporteDestinoCEP: TMaskEdit;
    Lbl_ReqOrigemCEP: TLabel;
    Lbl_ReqOrigemTipoServico: TLabel;
    Lbl_ReqDestinoCEP: TLabel;
    Lbl_ReqDestinoTipoServico: TLabel;
    MsEdt_DocumentosTaxasValorFrete: TMaskEdit;
    MsEdt_DocumentosTaxasPedagio: TMaskEdit;
    MsEdt_DocumentosTaxasDespacho: TMaskEdit;
    MsEdt_DocumentosTaxasSeguro: TMaskEdit;
    MsEdt_DocumentosTaxasOutros: TMaskEdit;
    Lbl_ReqValoresFrete: TLabel;
    Lbl_ReqValoresDespacho: TLabel;
    Lbl_ReqValoresPedagio: TLabel;
    Lbl_ReqValoresSeguro: TLabel;
    Lbl_ReqValoresOutros: TLabel;
    ComboBox2: TComboBox;
    Label41: TLabel;
    Lbl_ReqVeiculoPlaca: TLabel;
    Lbl_ReqVeiculoTARA: TLabel;
    Lbl_ReqVeiculoPlacaUF: TLabel;
    Lbl_ReqVeiculoRENAVAM: TLabel;
    Lbl_ReqVeiculoMotoristaNome: TLabel;
    Lbl_ReqVeiculoMotoristaCPF: TLabel;
    Lbl_ReqVeiculoCarroceria: TLabel;
    Lbl_ReqVeiculoTipoRodado: TLabel;
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
    function DarkenColor(Color: TColor; Percent: Byte): TColor; //Escurece as Bordas dos Botões
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
 try
  Dto := UseCase.Inicializar;
  CorBase  := StringToColor(Dto.CordosBotoes);
  CorFonte := StringToColor(Dto.CordaFonte);
  CorBorda := DarkenColor(CorBase, 30);
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

  Pnl_Participantes.ParentBackground := False;
  Pnl_Participantes.Color            := CorBorda;
  Pnl_Participantes.Font.Color       := CorFonte;


 finally
  UseCase.Free;
 end;
end;

procedure TFrm_CargoCTe.AplicarConfiguracoesSistema;
begin

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

constructor TFrm_CargoCTe.Create(AOwner: TComponent);
begin
  Inherited Create(AOwner);
  FMenuService := TMenuNavigationUtils.Create;
end;

function TFrm_CargoCTe.DarkenColor(Color: TColor; Percent: Byte): TColor;
var
  R, G, B: Byte;
begin
  Color := ColorToRGB(Color);

  R := GetRValue(Color);
  G := GetGValue(Color);
  B := GetBValue(Color);

  R := Round(R * (100 - Percent) / 100);
  G := Round(G * (100 - Percent) / 100);
  B := Round(B * (100 - Percent) / 100);

  Result := RGB(R, G, B);
end;

destructor TFrm_CargoCTe.Destroy;
begin
  FMenuService.Free;
  inherited;
end;

procedure TFrm_CargoCTe.FormCreate(Sender: TObject);
begin
//Registra os Panels para o Menu
  FMenuService.RegisterPanel(Pnl_NotaInfo);
  FMenuService.RegisterPanel(Pnl_NotasEmitidas);
  FMenuService.RegisterPanel(Pnl_Transportadoras);
  FMenuService.RegisterPanel(Pnl_Motoristas);

//Inicializa as configurações do sistema (DESIGN)
  AplicarConfiguracoesDesign;
  AplicarConfiguracoesSistema;
  AplicarConfiguracoesDB; 
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
