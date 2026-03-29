unit Config.DB.SQLite;

interface

uses
  ConfiRepository.Interfaces,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Phys.SQLite,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.Phys.SQLiteDef,
  System.SysUtils,
  FireDAC.Comp.UI,
  FireDac.Stan.Param, 
  Classes, Config.Entidade;

type
  TConfigDBSqlite = class(TInterfacedObject, IConfigRepository)
  private
    FDatabase   : string;
    FConnection : TFDConnection;
    FQuery      : TFDQuery;
    FLink       : TFDPhysSQLiteDriverLink;

    procedure CommitAndClose;
    procedure CriarBancoSeInexistente;

  public
    constructor Create(const ADatabase: string);
    destructor Destroy; override;

    procedure Salvar(Config: TConfig);
    procedure ConectarAoBanco;
    function Obter: TConfig;
  end;

implementation

{ TConfigDBSqlite }

procedure TConfigDBSqlite.CommitAndClose;
begin
  if FConnection.InTransaction then
    FConnection.Commit;

  if FConnection.Connected then
    FConnection.Close;
end;

procedure TConfigDBSqlite.ConectarAoBanco;
begin
  if not FConnection.Connected then
    FConnection.Open;

  if not FConnection.InTransaction then
    FConnection.StartTransaction;
end;

constructor TConfigDBSqlite.Create(const ADatabase: string);
begin
  inherited Create;

  FDatabase   := ADatabase;
  FLink       := TFDPhysSQLiteDriverLink.Create(nil);
  FConnection := TFDConnection.Create(nil);
  FQuery      := TFDQuery.Create(nil);

  FQuery.Connection := FConnection;

  CriarBancoSeInexistente;
end;

procedure TConfigDBSqlite.CriarBancoSeInexistente;
begin
  FConnection.Params.Clear;
  FConnection.DriverName := 'SQLite';
  FConnection.Params.Add('Database=' + FDatabase);
  FConnection.Params.Add('OpenMode=CreateUTF8');

  FConnection.Open;

  FConnection.ExecSQL(
    'CREATE TABLE IF NOT EXISTS Config (' +
    'Id INTEGER PRIMARY KEY CHECK (Id = 1), ' +
    'HelPanel BOOLEAN, ' +
    'Banners BOOLEAN, ' +
    'ValorTotal BOOLEAN, ' +
    'BotoesDeAcessoAoBD BOOLEAN, ' +
    'ExibirImagemNotaCte BOOLEAN, ' +
    'CordeFundo TEXT, ' +
    'CordosBotoes TEXT, ' +
    'CordaFonte TEXT' +
    ')'
  );

  // Garante existência do registro único
  FConnection.ExecSQL(
    'INSERT OR IGNORE INTO Config (Id) VALUES (1)'
  );

  FConnection.Close;
end;

destructor TConfigDBSqlite.Destroy;
begin
  if FConnection.InTransaction then
    FConnection.Rollback;

  FQuery.Free;
  FConnection.Free;
  FLink.Free;

  inherited;
end;

function TConfigDBSqlite.Obter: TConfig;
var
  Q: TFDQuery;
begin
  ConectarAoBanco;

  Q := TFDQuery.Create(nil);
  try
    Q.Connection := FConnection;
    Q.SQL.Text := 'SELECT * FROM Config WHERE Id = 1';
    Q.Open;

    if Q.IsEmpty then
      Exit(TConfig.Create(False, False, False, False, False, '', '', ''));

    Result := TConfig.Create(
      Q.FieldByName('HelPanel').AsBoolean,
      Q.FieldByName('Banners').AsBoolean,
      Q.FieldByName('ValorTotal').AsBoolean,
      Q.FieldByName('BotoesDeAcessoAoBD').AsBoolean,
      Q.FieldByName('ExibirImagemNotaCte').AsBoolean,
      Q.FieldByName('CordeFundo').AsString,
      Q.FieldByName('CordosBotoes').AsString,
      Q.FieldByName('CordaFonte').AsString
    );
  finally
    Q.Free;
    CommitAndClose;
  end;
end;

procedure TConfigDBSqlite.Salvar(Config: TConfig);
begin
  ConectarAoBanco;

  try
    FQuery.SQL.Text :=
      'UPDATE Config SET ' +
      'HelPanel = :HelPanel, ' +
      'Banners = :Banners, ' +
      'ValorTotal = :ValorTotal, ' +
      'BotoesDeAcessoAoBD = :BotoesDeAcessoAoBD, ' +
      'ExibirImagemNotaCte = :ExibirImagemNotaCte, ' +
      'CordeFundo = :CordeFundo, ' +
      'CordosBotoes = :CordosBotoes, ' +
      'CordaFonte = :CordaFonte ' +
      'WHERE Id = 1';

    FQuery.ParamByName('HelPanel').AsBoolean := Config.ExibirHelpPanel;
    FQuery.ParamByName('Banners').AsBoolean := Config.ExibirBanner;
    FQuery.ParamByName('ValorTotal').AsBoolean := Config.ExibirOValorTotal;
    FQuery.ParamByName('BotoesDeAcessoAoBD').AsBoolean := Config.HabilitarBotoesDB;
    FQuery.ParamByName('ExibirImagemNotaCte').AsBoolean := Config.ExibirLogoNotaCTe;
    FQuery.ParamByName('CordeFundo').AsString := Config.CorDeFundo;
    FQuery.ParamByName('CordosBotoes').AsString := Config.CorDosBotoes;
    FQuery.ParamByName('CordaFonte').AsString := Config.CorDaFonte;

    FQuery.ExecSQL;

    FConnection.Commit;
  except
    FConnection.Rollback;
    raise;
  end;

  CommitAndClose;
end;

end.
