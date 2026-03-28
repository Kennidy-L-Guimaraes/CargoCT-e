unit Config.Entidade;

interface

uses Validar.Exceptions;

type
  TConfig = class
  private
    FExibirHelpPanel   : Boolean;
    FExibirBanner      : Boolean;
    FExibirOValorTotal : Boolean;
    FHabilitarBotoesDB : Boolean;
    FExibirLogoNotaCTe : Boolean;
    FCorDeFundo        : string;
    FCorDosBotoes      : string;
    FCorDaFonte        : string;

    procedure ValidarCor(const ACor: string);

  public
    constructor Create(
      AExibirHelpPanel: Boolean;
      AExibirBanner: Boolean;
      AExibirOValorTotal: Boolean;
      AHabilitarBotoesDB: Boolean;
      AExibirLogoNotaCTe: Boolean;
      ACorDeFundo: string;
      ACorDosBotoes: string;
      ACorDaFonte: string
    );
    property ExibirHelpPanel: Boolean read FExibirHelpPanel;
    property ExibirBanner: Boolean read FExibirBanner;
    property ExibirOValorTotal: Boolean read FExibirOValorTotal;
    property HabilitarBotoesDB: Boolean read FHabilitarBotoesDB;
    property ExibirLogoNotaCTe: Boolean read FExibirLogoNotaCTe;
    property CorDeFundo: string read FCorDeFundo;
    property CorDosBotoes: string read FCorDosBotoes;
    property CorDaFonte: string read FCorDaFonte;
    procedure AlterarCores(AFundo, ABotoes, AFonte: string);
  end;

implementation

uses
  SysUtils;

constructor TConfig.Create(
  AExibirHelpPanel: Boolean;
  AExibirBanner: Boolean;
  AExibirOValorTotal: Boolean;
  AHabilitarBotoesDB: Boolean;
  AExibirLogoNotaCTe: Boolean;
  ACorDeFundo: string;
  ACorDosBotoes: string;
  ACorDaFonte: string
);
begin
  ValidarCor(ACorDeFundo);
  ValidarCor(ACorDosBotoes);
  ValidarCor(ACorDaFonte);

  FExibirHelpPanel   := AExibirHelpPanel;
  FExibirBanner      := AExibirBanner;
  FExibirOValorTotal := AExibirOValorTotal;
  FHabilitarBotoesDB := AHabilitarBotoesDB;
  FExibirLogoNotaCTe := AExibirLogoNotaCTe;
  FCorDeFundo        := ACorDeFundo;
  FCorDosBotoes      := ACorDosBotoes;
  FCorDaFonte        := ACorDaFonte;
end;

procedure TConfig.ValidarCor(const ACor: string);
begin
  if ACor.Trim.IsEmpty then
   TValidar.LancarErro(ACor, 'Cor Inválida!');
end;

procedure TConfig.AlterarCores(AFundo, ABotoes, AFonte: string);
begin
  ValidarCor(AFundo);
  ValidarCor(ABotoes);
  ValidarCor(AFonte);

  FCorDeFundo   := AFundo;
  FCorDosBotoes := ABotoes;
  FCorDaFonte   := AFonte;
end;

end.
