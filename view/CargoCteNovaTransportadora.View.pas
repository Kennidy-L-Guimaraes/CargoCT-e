unit CargoCteNovaTransportadora.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtDlgs;

type
  TFrm_NovaTransportadora = class(TForm)
    Panel1: TPanel;
    Opd_BuscarImagem: TOpenPictureDialog;
    ScrollBox1: TScrollBox;
    GroupBox1: TGroupBox;
    Pnl_IdentificacaoCte: TPanel;
    Lbl_IdentificacaoSerie: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image2: TImage;
    Edt_IdentificacaoSerie: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Image1: TImage;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
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
    Panel8: TPanel;
    Image3: TImage;
    Button1: TButton;
    Image4: TImage;
    procedure Btn_BtnCancelarConfiguracoesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_NovaTransportadora: TFrm_NovaTransportadora;

implementation

{$R *.dfm}

procedure TFrm_NovaTransportadora.Btn_BtnCancelarConfiguracoesClick(
  Sender: TObject);
begin
  Frm_NovaTransportadora.Close;

end;

end.
