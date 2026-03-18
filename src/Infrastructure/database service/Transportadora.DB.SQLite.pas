unit Transportadora.DB.SQLite;

interface
uses
  Transportadora.Entidade,
  TransportadoraRepository.Interfaces,
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
  FireDac.Stan.Param;

 type
  TTransportadoraDBSQLite = class(TInterfacedObject, ITransportadoraRepository)
    private
     {Private Declarations}
      FDatabase   : string;
      FConnection : TFDConnection;
      FQuery      : TFDQuery;
      FLink       : TFDPhysSQLiteDriverLink;
      FWaitCursor : TFDGUIxWaitCursor;

      procedure CriarBancoSeInexistente;
      procedure ConectarAoBanco;
    public
     {Public Declarations}
      constructor Create(const ADatabase: string);
      destructor  Destroy; override;
      procedure SalvarTransportadora(ATransportadora: TTransportadora);
      procedure CommitAndClose;
      function  ExisteNoBanco(ACNPJ: string): boolean;
  end;

implementation

{ TTransportadoraDBSQLite }

uses
  Validar.Exceptions,
  RegimeTributario.Mapper,
  PapelCte.Mapper,
  TipoTributacao.Mapper,
  TipoOperacao.Mapper,
  SistemaAtivo.Mapper;

procedure TTransportadoraDBSQLite.CommitAndClose;
begin
  if FConnection.InTransaction then
     FConnection.Commit;
  FConnection.Close;
end;

procedure TTransportadoraDBSQLite.ConectarAoBanco;
begin
 if not FConnection.Connected then
   FConnection.Open;
 FConnection.StartTransaction; // StartTransaction sempre deve rodar ao conectar
end;

constructor TTransportadoraDBSQLite.Create(const ADatabase: string);
begin
  inherited Create;
  FDatabase   := ADatabase;
  FWaitCursor := TFDGUIxWaitCursor.Create(nil);
  FLink       := TFDPhysSQLiteDriverLink.Create(nil);
  FConnection := TFDConnection.Create(nil);
  FQuery      := TFDQuery.Create(nil);
  FQuery.Connection := FConnection; //Associa query à conexão
  CriarBancoSeInexistente;
  ConectarAoBanco;
end;

procedure TTransportadoraDBSQLite.CriarBancoSeInexistente;
begin
  FConnection.Params.Clear;
  FConnection.DriverName := 'SQLite';
  FConnection.Params.Add('DataBase='+FDatabase);
  FConnection.Params.Add('OpenMode=CreateUTF8'); //Cria o Banco
  FConnection.Open; //Abre o Banco
  FConnection.ExecSQL(
  'CREATE TABLE IF NOT EXISTS Transportadora (' +
  '  id                INTEGER PRIMARY KEY NOT NULL UNIQUE,' +
  '  CNPJ              TEXT    NOT NULL UNIQUE,' +
  '  RazaoSocial       TEXT,' +
  '  InscricaoEstadual TEXT,' +
  '  RegimeTributario  TEXT,' +
  '  CEP               TEXT,' +
  '  Municipio         TEXT,' +
  '  Bairro            TEXT,' +
  '  Logradouro        TEXT,' +
  '  CodigoIBGE        TEXT,' +
  '  Complemento       TEXT,' +
  '  EstadoUF          TEXT,' +
  '  Numero            TEXT,' +
  '  PapelCte          TEXT,' +
  '  TipoTributacao    TEXT,' +
  '  ObservacaoFiscal  TEXT,' +
  '  Aliquota          REAL,' +
  '  TipoTransporte    TEXT,' +
  '  TipoOperacao      TEXT,' +
  '  Status            TEXT,' +
  '  Responsavel       TEXT,' +
  '  DataCadastro      TEXT,' +
  '  Telefone          TEXT,' +
  '  Site              TEXT,' +
  '  Email             TEXT' +
  ')'
);

 FConnection.Close; //Fecha o Banco
end;

destructor TTransportadoraDBSQLite.Destroy;
begin
  if FConnection.InTransaction then
    FConnection.Rollback;
  FQuery.Free;
  FConnection.Free;
  FLink.Free;
  FWaitCursor.Free;
  inherited;
end;

function TTransportadoraDBSQLite.ExisteNoBanco(ACNPJ: string): boolean;
begin
  FQuery.SQL.Text := 'SELECT 1 FROM Transportadora WHERE CNPJ = :CNPJ LIMIT 1';
  FQuery.ParamByName('cnpj').AsString := ACNPJ;
  FQuery.Open;
  Result := not FQuery.IsEmpty;
  FQuery.Close;
end;

procedure TTransportadoraDBSQLite.SalvarTransportadora(
  ATransportadora: TTransportadora);
begin
  FQuery.SQL.Text :=
    'INSERT INTO Transportadora (' +
    '  CNPJ, RazaoSocial, InscricaoEstadual, RegimeTributario,' +
    '  CEP, EstadoUF, Municipio, Bairro, Logradouro, Numero, CodigoIBGE, Complemento,' +
    '  PapelCte, TipoTributacao, ObservacaoFiscal, Aliquota,' +
    '  TipoOperacao,' +
    '  Status, Responsavel,' +
    '  DataCadastro,' +
    '  Telefone, Site, Email' +
    ') VALUES (' +
    '  :CNPJ, :RazaoSocial, :InscricaoEstadual, :RegimeTributario,' +
    '  :CEP, :EstadoUF, :Municipio, :Bairro, :Logradouro, :Numero, :CodigoIBGE, :Complemento,' +
    '  :PapelCte, :TipoTributacao, :ObservacaoFiscal, :Aliquota,' +
    '  :TipoOperacao,' +
    '  :Status, :Responsavel,' +
    '  :DataCadastro,' +
    '  :Telefone, :Site, :Email' +
    ')';

  // --- IdentidadeFiscal ---
  FQuery.ParamByName('CNPJ').AsString               := ATransportadora.IdentidadeFiscal.CNPJ.Valor;
  FQuery.ParamByName('RazaoSocial').AsString        := ATransportadora.IdentidadeFiscal.RazaoSocial;
  FQuery.ParamByName('InscricaoEstadual').AsString  := ATransportadora.IdentidadeFiscal.InscricaoIE;
  FQuery.ParamByName('RegimeTributario').AsString   := TMapperRegimeTributario.EnumTexto(ATransportadora.IdentidadeFiscal.RegimeTributario);

  // --- Endereco ---
  FQuery.ParamByName('CEP').AsString           := ATransportadora.Endereco.CEP.Valor;
  FQuery.ParamByName('EstadoUF').AsString      := ATransportadora.Endereco.EstadoUF;
  FQuery.ParamByName('Municipio').AsString     := ATransportadora.Endereco.Municipio;
  FQuery.ParamByName('Bairro').AsString        := ATransportadora.Endereco.Bairro;
  FQuery.ParamByName('Logradouro').AsString    := ATransportadora.Endereco.Logradouro;
  FQuery.ParamByName('Numero').AsString        := ATransportadora.Endereco.Numero;
  FQuery.ParamByName('CodigoIBGE').AsString    := ATransportadora.Endereco.CodigoIBGE;
  FQuery.ParamByName('Complemento').AsString   := ATransportadora.Endereco.Complemento;

  // --- DadosFiscais ---
  FQuery.ParamByName('PapelCte').AsString         := TMapperPapelCTe.EnumTexto(ATransportadora.DadosFiscais.PapelCTe);
  FQuery.ParamByName('TipoTributacao').AsString   := TMapperTipoTributacao.EnumTexto(ATransportadora.DadosFiscais.TipoTributacao);
  FQuery.ParamByName('ObservacaoFiscal').AsString := ATransportadora.DadosFiscais.ObservacaoFiscal;
  FQuery.ParamByName('Aliquota').AsFloat          := ATransportadora.DadosFiscais.AliquotaPadrao;

  // --- DadosOperacionais ---
  FQuery.ParamByName('TipoOperacao').AsString := TMapperTipoOperacao.EnumTexto(ATransportadora.DadosOperacionais.TipoOperacao);

  // --- SistemaOperacional ---
  FQuery.ParamByName('Status').AsString       := TMapperSistemaAtivo.EnumTexto(ATransportadora.SistemaOperacional.Status);
  FQuery.ParamByName('Responsavel').AsString  := ATransportadora.SistemaOperacional.Responsavel;

  // --- DataCadastro (gerada na persistência) ---
  FQuery.ParamByName('DataCadastro').AsString := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
  // --- Contato ---
  FQuery.ParamByName('Telefone').AsString   := ATransportadora.Contato.NumeroTelefone;
  FQuery.ParamByName('Site').AsString       := ATransportadora.Contato.Site;
  FQuery.ParamByName('Email').AsString      := ATransportadora.Contato.Email;

  FQuery.ExecSQL;
end;


end.
