unit CargoCteNovoTransporte.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Data.DB,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ComCtrls;

type
  TFrm_NovoTransporte = class(TForm)
    Pnl_Background: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    ComboBox2: TComboBox;
    Edit5: TEdit;
    Edit8: TEdit;
    Edit10: TEdit;
    ComboBox4: TComboBox;
    Img_NovaTransportadoraBanner: TImage;
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
    Lbl_VeiculoMotoristaCapacidade: TLabel;
    Lbl_VeiculoMotoristaMotoristaAssociado: TLabel;
    Label9: TLabel;
    Edt_VeiculoMotoristaPlaca: TEdit;
    Edt_VeiculoMotoristaTipoVeiculo: TEdit;
    Edt_VeiculoMotoristaCapacidade: TEdit;
    Cmbx_VeiculoMotoristaPlacaUF: TComboBox;
    Cmbx_VeiculoMotoristaMotoristaAssociado: TComboBox;
    ComboBox3: TComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    Shape1: TShape;
    SpeedButton1: TSpeedButton;
    Panel4: TPanel;
    Shape2: TShape;
    SpeedButton2: TSpeedButton;
    Image1: TImage;
    procedure Btn_CancelarNovaTransportadoraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_NovoTransporte: TFrm_NovoTransporte;

implementation

{$R *.dfm}

procedure TFrm_NovoTransporte.Btn_CancelarNovaTransportadoraClick(
  Sender: TObject);
begin
 Frm_NovoTransporte.Close;
end;

end.
