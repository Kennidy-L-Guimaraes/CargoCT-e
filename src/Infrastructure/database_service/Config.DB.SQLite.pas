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
    {Private Declarations}
      FDatabase   : string;
      FConnection : TFDConnection;
      FQuery      : TFDQuery;
      FLink       : TFDPhysSQLiteDriverLink;
      procedure CommitAndClose;
      procedure CriarBancoSeInexistente;
      
   public
    {Public Declarations}
    constructor Create(const ADatabase: string);
    destructor  Destroy; override;
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
  FConnection.Close;
end;

procedure TConfigDBSqlite.ConectarAoBanco;
begin
 If not FConnection.Connected then
    FConnection.Open; 
 FConnection.StartTransaction;
end;

constructor TConfigDBSqlite.Create(const ADatabase: string);
begin
 inherited Create;
  FDatabase   := ADatabase;
  FLink       := TFDPhysSQLiteDriverLink.Create(nil);
  FConnection := TFDConnection.Create(nil);
  FQuery      := TFDQuery.Create(nil);
  FQuery.Connection := FConnection; //Associa query à conexão
  CriarBancoSeInexistente;
  ConectarAoBanco;
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
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := FConnection;
    Q.SQL.Text := 'SELECT * FROM Config WHERE Id = 1';
    Q.Open;

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
  end;
end;

procedure TConfigDBSqlite.Salvar(Config: TConfig);
begin
  FConnection.ExecSQL(
    'UPDATE Config SET ' +
    'HelPanel = :HelPanel, ' +
    'Banners = :Banners, ' +
    'ValorTotal = :ValorTotal, ' +
    'BotoesDeAcessoAoBD = :BotoesDeAcessoAoBD, ' +
    'ExibirImagemNotaCte = :ExibirImagemNotaCte, ' +
    'CordeFundo = :CordeFundo, ' +
    'CordosBotoes = :CordosBotoes, ' +
    'CordaFonte = :CordaFonte ' +
    'WHERE Id = 1',
    [
      Config.ExibirHelpPanel,
      Config.ExibirBanner,
      Config.ExibirOValorTotal,
      Config.HabilitarBotoesDB,
      Config.ExibirLogoNotaCTe,
      Config.CorDeFundo,
      Config.CorDosBotoes,
      Config.CorDaFonte
    ]
  );
  FQuery.ExecSQL;
end;

end.
