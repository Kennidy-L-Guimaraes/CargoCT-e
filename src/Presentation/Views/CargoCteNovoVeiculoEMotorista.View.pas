unit CargoCteNovoVeiculoEMotorista.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Data.DB,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.jpeg;

type
  TFrm_NovoVeiculoEMotorista = class(TForm)
    Pnl_Background: TPanel;
    Grbx_VeiculoMotorista: TGroupBox;
    Pnl_VeiculoMotorista: TPanel;
    Lbl_VeiculoMotoristaPlaca: TLabel;
    Lbl_VeiculoMotoristaPlacaUF: TLabel;
    Lbl_VeiculoMotoristaTipoVeiculo: TLabel;
    Lbl_VeiculoMotoristaCapacidade: TLabel;
    Lbl_VeiculoMotoristaMotoristaAssociado: TLabel;
    Edt_VeiculoMotoristaPlaca: TEdit;
    Edt_VeiculoMotoristaTipoVeiculo: TEdit;
    Edt_VeiculoMotoristaCapacidade: TEdit;
    Cmbx_VeiculoMotoristaPlacaUF: TComboBox;
    Cmbx_VeiculoMotoristaMotoristaAssociado: TComboBox;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Pnl_NovaTransportadoraBtns: TPanel;
    Pnl_BtnSalvarNovaTransportadora: TPanel;
    Shp_BtnSalvarNovaTransportadora: TShape;
    Btn_SalvarNovaTransportadora: TSpeedButton;
    Pnl_BtnCancelarNovaTransportadora: TPanel;
    Shp_BtnCancelarNovaTransportadora: TShape;
    Btn_CancelarNovaTransportadora: TSpeedButton;
    Img_NovaTransportadoraBanner: TImage;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    ComboBox2: TComboBox;
    procedure Btn_CancelarNovaTransportadoraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_NovoVeiculoEMotorista: TFrm_NovoVeiculoEMotorista;

implementation

{$R *.dfm}

procedure TFrm_NovoVeiculoEMotorista.Btn_CancelarNovaTransportadoraClick(
  Sender: TObject);
begin
 Frm_NovoVeiculoEMotorista.Close;
end;

end.
