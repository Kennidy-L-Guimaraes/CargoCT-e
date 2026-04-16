unit CargoCteNovaFrota.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Data.DB,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ComCtrls,
  Vcl.Mask, Config.DTO, Config.UseCase, Config.Factory, Design.Utils;

type
  TFrm_NovaFrota = class(TForm)
    Pnl_Background: TPanel;
    PagCtr_NovaFrota: TPageControl;
    TbSh_NovoMotorista: TTabSheet;
    TbSh_NovoVeiculo: TTabSheet;
    Pnl_NovoMotorista: TPanel;
    GrBx_Habilitacao: TGroupBox;
    Pnl_Habilitacao: TPanel;
    Lbl_HabilitacaoTipoDeMotorista: TLabel;
    Lbl_HabilitacaoNumeroCNH: TLabel;
    Lbl_HabilitacaoValidadeCNH: TLabel;
    Lbl_HabilitacaoCategoria: TLabel;
    Lbl_HabilitacaoValidadeExamMedico: TLabel;
    Lbl_ReqHabilitacaoValidadeCNH: TLabel;
    Lbl_ReqHabilitacaoNumeroCNH: TLabel;
    Lbl_ReqHabilitacaoTipoMotorista: TLabel;
    Lbl_ReqHabilitacaoCategoria: TLabel;
    Lbl_ReqHabilitacaoValidadeExame: TLabel;
    CmBx_HabilitacaoTipoMotorista: TComboBox;
    Edt_HabilitacaoNumeroCNH: TEdit;
    CmBx_HabilitacaoCategoria: TComboBox;
    MsEdt_HabilitacaoValidadeExamMedico: TMaskEdit;
    MsEdt_HabilitacaoValidadeCNH: TMaskEdit;
    GrBx_DadosDoMotorista: TGroupBox;
    Pnl_DadosDoMotorista: TPanel;
    Lbl_DadosDoMotoristaNome: TLabel;
    Lbl_DadosDoMotoristaCPF: TLabel;
    Lbl_DadosDoMotoristaRG: TLabel;
    Lbl_DadosDoMotoristaDataDeNascimento: TLabel;
    Lbl_DadosDoMotoristaEstadoCivil: TLabel;
    Lbl_DadosDoMotoristaTelefone: TLabel;
    Lbl_DadosDoMotoristaCEP: TLabel;
    Lbl_ReqNomeCompleto: TLabel;
    Lbl_ReqDadosMotoristaDataNascimento: TLabel;
    Lbl_ReqCEP: TLabel;
    Lbl_ReqTelefone: TLabel;
    Lbl_ReqRG: TLabel;
    Lbl_ReqDadosMotoristaCPF: TLabel;
    Edt_DadosDoMotoristaNome: TEdit;
    CmBx_DadosDoMotoristaEstadoCivil: TComboBox;
    MsEdt_DadosDoMotoristaTelefone: TMaskEdit;
    MsEdt_DadosDoMotoristaRG: TMaskEdit;
    MsEdt_DadosDoMotoristaDataNascimento: TMaskEdit;
    MsEdt_DadosDoMotoristaCPF: TMaskEdit;
    MsEdt_DadosDoMotoristaCEP: TMaskEdit;
    Lbl_CadastroCompletoRNTRCANTT: TLabel;
    Pnl_NovoMotoristaBtns: TPanel;
    Pnl_BtnSalvarNovoMotorista: TPanel;
    Shp_BtnSalvarNovoMotorista: TShape;
    Btn_SalvarNovoMotorista: TSpeedButton;
    Pnl_BtnCancelarNovoMotorista: TPanel;
    Shp_BtnCancelarNovoMotorista: TShape;
    Btn_CancelarNovoMotorista: TSpeedButton;
    Pnl_NovoVeiculo: TPanel;
    Grbx_VeiculoMotorista: TGroupBox;
    Pnl_VeiculoMotorista: TPanel;
    Lbl_VeiculoMotoristaPlaca: TLabel;
    Lbl_VeiculoMotoristaPlacaUF: TLabel;
    Lbl_VeiculoMotoristaTipoVeiculo: TLabel;
    Lbl_VeiculoMotoristaMotoristaAssociado: TLabel;
    Label14: TLabel;
    Lbl_ReqVeiculoPlaca: TLabel;
    Lbl_ReqVeiculoPlacaUF: TLabel;
    Lbl_ReqVeiculoRNTRC: TLabel;
    Lbl_ReqVeiculoProprietario: TLabel;
    Lbl_ReqVeiculoTipoVeiculo: TLabel;
    Edt_VeiculoMotoristaPlaca: TEdit;
    Edt_VeiculoMotoristaTipoVeiculo: TEdit;
    Cmbx_VeiculoMotoristaPlacaUF: TComboBox;
    Cmbx_VeiculoMotoristaMotoristaAssociado: TComboBox;
    Edt_VeiculoRNTRC: TEdit;
    GroupBox2: TGroupBox;
    Pnl_Especificacoes: TPanel;
    Lbl_EspecificacoesCapacidadeKg: TLabel;
    Lbl_EspecificacoesMarca: TLabel;
    Lbl_EspecificacoesModelo: TLabel;
    Lbl_EspecificacoesCor: TLabel;
    Lbl_EspecificacoesTipoVeiculo: TLabel;
    Lbl_ReqEspecificacoesTipoVeiculo: TLabel;
    Lbl_ReqEspecificacoesCapacidade: TLabel;
    Edt_VeiculoMotoristaCapacidade: TEdit;
    Edt_EspecificacoesMarca: TEdit;
    Edt_EspecificacoesModelo: TEdit;
    Edt_EspecificacoesCor: TEdit;
    Edt_EspecificacoesTipoVeiculo: TEdit;
    GrBx_ControleOp: TGroupBox;
    Pnl_ControleOp: TPanel;
    Lbl_ControleOpStatus: TLabel;
    Lbl_ControleOpPossuiRastreador: TLabel;
    Lbl_ControleOpKmAtual: TLabel;
    Lbl_ControleOpNEquipamento: TLabel;
    Lbl_ReqControleOpStatus: TLabel;
    RaBt_ControleOpSim: TRadioButton;
    RaBt_ControleOpNao: TRadioButton;
    ChBx_ControleOpAtivo: TCheckBox;
    Edt_ControleOpKmAtual: TEdit;
    Edt_ControleOpNEquipamentos: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Shape1: TShape;
    SpeedButton1: TSpeedButton;
    Panel4: TPanel;
    Shape2: TShape;
    SpeedButton2: TSpeedButton;
    Lbl_Nao: TLabel;
    Lbl_Sim: TLabel;
    procedure Btn_CancelarNovoMotoristaClick(Sender: TObject);
    procedure InicializarConfiguracoes;
    procedure AplicarConfiguracoesDesign;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_NovaFrota: TFrm_NovaFrota;

implementation

{$R *.dfm}

procedure TFrm_NovaFrota.AplicarConfiguracoesDesign;
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
    Pnl_Background.ParentBackground  := False;
    Pnl_Background.Color             := CorBorda;
    Pnl_Background.Font.Color        := CorFonte;

    //Novo Motorista
    Pnl_NovoMotorista.ParentBackground  := False;
    Pnl_NovoMotorista.Color             := CorBorda;
    Pnl_NovoMotorista.Font.Color        := CorFonte;

    //Novo Veiculo
    Pnl_NovoVeiculo.ParentBackground  := False;
    Pnl_NovoVeiculo.Color             := CorBorda;
    Pnl_NovoVeiculo.Font.Color        := CorFonte;
   finally
   UseCase.Free;
   end;
end;

procedure TFrm_NovaFrota.Btn_CancelarNovoMotoristaClick(
  Sender: TObject);
begin
 Frm_NovaFrota.Close;
end;

procedure TFrm_NovaFrota.FormCreate(Sender: TObject);
begin
 InicializarConfiguracoes;
end;

procedure TFrm_NovaFrota.InicializarConfiguracoes;
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
  end;
  finally
  UseCase.Free;
  end;
end;

end.
