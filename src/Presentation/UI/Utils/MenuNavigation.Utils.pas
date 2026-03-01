{
  ATENÇÃO

  Responsabilidade da Classe:

  Coordenar a navegação entre containers visuais do menu,
  garantindo que apenas um esteja ativo por vez.

  NÃO deve:

  - Conter regras de negócio.
  - Depender de formulários específicos.
  - Executar validações de domínio.
  - Manipular estado externo fora dos componentes registrados.

  DEVE:

  - Gerenciar o ciclo de exibição dos painéis registrados.
  - Centralizar a lógica de ativação e ocultação.
  - Reduzir repetição de código na camada de apresentação.
}

unit MenuNavigation.Utils;


interface

uses System.SysUtils, System.Classes, Vcl.Controls, Vcl.ExtCtrls, Generics.Collections;

type
 TMenuNavigationUtils = Class
 Private
  {Private Declarations}
  FPanels : TList<TPanel>;
  procedure HideAllPanels;
  procedure ShowPanel(APanel: TPanel);

 Public
  {Public Declarations}
  procedure RegisterPanel(APanel: TPanel);
  procedure ActivePanel(APanel: TPanel);
  Constructor Create;
  Destructor Destroy;

 End;

implementation

{ TMenuNavigationService }

procedure TMenuNavigationUtils.ActivePanel(APanel: TPanel);
begin
  if not FPanels.Contains(APanel) then
    raise Exception.Create('Painel não registrado');
  HideAllPanels;
  ShowPanel(APanel);
end;

constructor TMenuNavigationUtils.Create;
begin
 inherited Create;
 FPanels := TList<TPanel>.Create;
end;

destructor TMenuNavigationUtils.Destroy;
begin
  FPanels.Free;
  Inherited Destroy;
end;

procedure TMenuNavigationUtils.HideAllPanels;
 var
  Panel : TPanel;
begin
  For Panel in FPanels do
  begin
  Panel.Width   := 0;
  Panel.Align   := AlNone;
  Panel.Visible := False;
  end;
end;

procedure TMenuNavigationUtils.RegisterPanel(APanel: TPanel);
begin
  If not FPanels.Contains(APanel) then FPanels.Add(APanel);
end;

procedure TMenuNavigationUtils.ShowPanel(APanel: TPanel);
begin
  APanel.Align   := AlClient;
  APanel.Visible := True;
end;

end.
