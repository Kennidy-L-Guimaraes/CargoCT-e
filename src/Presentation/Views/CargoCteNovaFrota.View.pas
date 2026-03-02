unit CargoCteNovaFrota.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Data.DB,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ComCtrls,
  Vcl.Mask;

type
  TFrm_NovaFrota = class(TForm)
    Pnl_Background: TPanel;
    PagCtr_NovaFrota: TPageControl;
    TbSh_NovoMotorista: TTabSheet;
    TbSh_NovoVeiculo: TTabSheet;
    GrBx_DadosDoMotorista: TGroupBox;
    Pnl_DadosDoMotorista: TPanel;
    Lbl_DadosDoMotoristaNome: TLabel;
    Lbl_DadosDoMotoristaCPF: TLabel;
    Lbl_DadosDoMotoristaRG: TLabel;
    Lbl_DadosDoMotoristaDataDeNascimento: TLabel;
    Lbl_DadosDoMotoristaEstadoCivil: TLabel;
    Lbl_DadosDoMotoristaTelefone: TLabel;
    Lbl_DadosDoMotoristaCEP: TLabel;
    Edt_DadosDoMotoristaNome: TEdit;
    CmBx_DadosDoMotoristaEstadoCivil: TComboBox;
    Pnl_NovoMotoristaBtns: TPanel;
    Pnl_BtnSalvarNovoMotorista: TPanel;
    Shp_BtnSalvarNovoMotorista: TShape;
    Btn_SalvarNovoMotorista: TSpeedButton;
    Pnl_BtnCancelarNovoMotorista: TPanel;
    Shp_BtnCancelarNovoMotorista: TShape;
    Btn_CancelarNovoMotorista: TSpeedButton;
    Grbx_VeiculoMotorista: TGroupBox;
    Pnl_VeiculoMotorista: TPanel;
    Lbl_VeiculoMotoristaPlaca: TLabel;
    Lbl_VeiculoMotoristaPlacaUF: TLabel;
    Lbl_VeiculoMotoristaTipoVeiculo: TLabel;
    Lbl_VeiculoMotoristaMotoristaAssociado: TLabel;
    Edt_VeiculoMotoristaPlaca: TEdit;
    Edt_VeiculoMotoristaTipoVeiculo: TEdit;
    Cmbx_VeiculoMotoristaPlacaUF: TComboBox;
    Cmbx_VeiculoMotoristaMotoristaAssociado: TComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    Shape1: TShape;
    SpeedButton1: TSpeedButton;
    Panel4: TPanel;
    Shape2: TShape;
    SpeedButton2: TSpeedButton;
    Edt_VeiculoRNTRC: TEdit;
    Label14: TLabel;
    GroupBox2: TGroupBox;
    Pnl_Especificacoes: TPanel;
    Lbl_EspecificacoesCapacidadeKg: TLabel;
    Lbl_EspecificacoesMarca: TLabel;
    Lbl_EspecificacoesModelo: TLabel;
    Lbl_EspecificacoesCor: TLabel;
    Edt_VeiculoMotoristaCapacidade: TEdit;
    Edt_EspecificacoesMarca: TEdit;
    Edt_EspecificacoesModelo: TEdit;
    Edt_EspecificacoesCor: TEdit;
    GrBx_ControleOp: TGroupBox;
    Pnl_ControleOp: TPanel;
    Lbl_ControleOpStatus: TLabel;
    Lbl_ControleOpPossuiRastreador: TLabel;
    RaBt_ControleOpSim: TRadioButton;
    RaBt_ControleOpNao: TRadioButton;
    ChBx_ControleOpAtivo: TCheckBox;
    Edt_ControleOpKmAtual: TEdit;
    Lbl_ControleOpKmAtual: TLabel;
    Edt_ControleOpNEquipamentos: TEdit;
    Lbl_ControleOpNEquipamento: TLabel;
    Edt_EspecificacoesTipoVeiculo: TEdit;
    Lbl_EspecificacoesTipoVeiculo: TLabel;
    GrBx_Habilitacao: TGroupBox;
    Pnl_Habilitacao: TPanel;
    Lbl_HabilitacaoTipoDeMotorista: TLabel;
    Lbl_HabilitacaoNumeroCNH: TLabel;
    Lbl_HabilitacaoValidadeCNH: TLabel;
    Lbl_HabilitacaoCategoria: TLabel;
    Lbl_HabilitacaoValidadeExamMedico: TLabel;
    CmBx_HabilitacaoTipoMotorista: TComboBox;
    Edt_HabilitacaoNumeroCNH: TEdit;
    CmBx_HabilitacaoCategoria: TComboBox;
    Lbl_ReqNomeCompleto: TLabel;
    Lbl_ReqDadosMotoristaDataNascimento: TLabel;
    Lbl_ReqCEP: TLabel;
    Lbl_ReqTelefone: TLabel;
    Lbl_ReqRG: TLabel;
    Lbl_ReqDadosMotoristaCPF: TLabel;
    Lbl_ReqHabilitacaoValidadeCNH: TLabel;
    Lbl_ReqHabilitacaoNumeroCNH: TLabel;
    Lbl_ReqHabilitacaoTipoMotorista: TLabel;
    Lbl_ReqHabilitacaoCategoria: TLabel;
    Lbl_ReqHabilitacaoValidadeExame: TLabel;
    Lbl_CadastroCompletoRNTRCANTT: TLabel;
    MsEdt_HabilitacaoValidadeExamMedico: TMaskEdit;
    MsEdt_DadosDoMotoristaTelefone: TMaskEdit;
    MsEdt_DadosDoMotoristaRG: TMaskEdit;
    MsEdt_HabilitacaoValidadeCNH: TMaskEdit;
    MsEdt_DadosDoMotoristaDataNascimento: TMaskEdit;
    MsEdt_DadosDoMotoristaCPF: TMaskEdit;
    MsEdt_DadosDoMotoristaCEP: TMaskEdit;
    Lbl_ReqVeiculoPlaca: TLabel;
    Lbl_ReqVeiculoPlacaUF: TLabel;
    Lbl_ReqVeiculoRNTRC: TLabel;
    Lbl_ReqVeiculoProprietario: TLabel;
    Lbl_ReqVeiculoTipoVeiculo: TLabel;
    Lbl_ReqEspecificacoesTipoVeiculo: TLabel;
    Lbl_ReqEspecificacoesCapacidade: TLabel;
    Lbl_ReqControleOpStatus: TLabel;
    procedure Btn_CancelarNovoMotoristaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_NovaFrota: TFrm_NovaFrota;

implementation

{$R *.dfm}

procedure TFrm_NovaFrota.Btn_CancelarNovoMotoristaClick(
  Sender: TObject);
begin
 Frm_NovaFrota.Close;
end;

end.
