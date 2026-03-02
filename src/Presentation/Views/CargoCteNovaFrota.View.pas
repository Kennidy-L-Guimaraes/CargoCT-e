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
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    ComboBox2: TComboBox;
    Pnl_NovaTransportadoraBtns: TPanel;
    Pnl_BtnSalvarNovaTransportadora: TPanel;
    Shp_BtnSalvarNovaTransportadora: TShape;
    Btn_SalvarNovaTransportadora: TSpeedButton;
    Pnl_BtnCancelarNovaTransportadora: TPanel;
    Shp_BtnCancelarNovaTransportadora: TShape;
    Btn_CancelarNovaTransportadora: TSpeedButton;
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
    Edit9: TEdit;
    Label14: TLabel;
    GroupBox2: TGroupBox;
    Panel5: TPanel;
    Lbl_VeiculoMotoristaCapacidade: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Edt_VeiculoMotoristaCapacidade: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    GroupBox3: TGroupBox;
    Panel6: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    CheckBox1: TCheckBox;
    Edit19: TEdit;
    Label24: TLabel;
    Edit11: TEdit;
    Label9: TLabel;
    Edit12: TEdit;
    Label15: TLabel;
    GroupBox4: TGroupBox;
    Panel7: TPanel;
    Label1: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    ComboBox1: TComboBox;
    Edit20: TEdit;
    ComboBox4: TComboBox;
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
    Label33: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    MaskEdit5: TMaskEdit;
    MaskEdit6: TMaskEdit;
    MaskEdit7: TMaskEdit;
    Lbl_ReqVeiculoPlaca: TLabel;
    Lbl_ReqVeiculoPlacaUF: TLabel;
    Lbl_ReqVeiculoRNTRC: TLabel;
    Lbl_ReqVeiculoProprietario: TLabel;
    Lbl_ReqVeiculoTipoVeiculo: TLabel;
    Lbl_ReqEspecificacoesTipoVeiculo: TLabel;
    Lbl_ReqEspecificacoesCapacidade: TLabel;
    Lbl_ReqControleOpStatus: TLabel;
    procedure Btn_CancelarNovaTransportadoraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_NovaFrota: TFrm_NovaFrota;

implementation

{$R *.dfm}

procedure TFrm_NovaFrota.Btn_CancelarNovaTransportadoraClick(
  Sender: TObject);
begin
 Frm_NovaFrota.Close;
end;

end.
