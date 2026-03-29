unit ConfiguracaoSistema.Db;

interface

uses
  System.SysUtils, System.IniFiles, System.IOUtils;

type
  TConfiguracaoSistema = class
  private
    //Path Transportadora
    class function CaminhoINITransportadora: string; static;
    class function PathPadraoTransportadora: string; static;

    //Path Configurações
    class function CaminhoINIConfig: string; static;
    class function PathPadraoConfig: string; static;
  public
    class function ObterCaminhoBancoTransportadora: string; static;
    class function ObterCaminhoBancoConfig: string; static;
  end;

implementation

{ TConfiguracaoSistema }

class function TConfiguracaoSistema.CaminhoINIConfig: string;
begin
   Result := TPath.Combine(
    ExtractFilePath(ParamStr(0)),
    'systemConfig.ini'
  );
end;

class function TConfiguracaoSistema.CaminhoINITransportadora: string;
begin
  Result := TPath.Combine(
    ExtractFilePath(ParamStr(0)),
    'configdb.ini'
  );
end;

class function TConfiguracaoSistema.PathPadraoConfig: string;
begin
  Result := 'C:\ProgramData\CargoCte';
end;

class function TConfiguracaoSistema.PathPadraoTransportadora: string;
begin
  // fallback seguro (produção)
  Result := 'C:\ProgramData\CargoCte';
end;

class function TConfiguracaoSistema.ObterCaminhoBancoConfig: string;
var
  Ini     : TIniFile;
  BasePath: string;
begin
  if FileExists(CaminhoINIConfig) then
  begin
    Ini := TIniFile.Create(CaminhoINIConfig);
    try
      BasePath := Ini.ReadString('Database', 'Path', PathPadraoConfig);
    finally
      Ini.Free;
    end;
  end
  else
  begin  //obrigatório para múltiplas instruções
    BasePath := PathPadraoConfig;
  end;
  if BasePath.Trim.IsEmpty then
    BasePath := PathPadraoConfig;

  ForceDirectories(BasePath);
  Result := TPath.Combine(BasePath, 'Config.db');
end;

class function TConfiguracaoSistema.ObterCaminhoBancoTransportadora: string;
var
  Ini     : TIniFile;
  BasePath: string;
begin
  if FileExists(CaminhoINITransportadora) then
  begin
    Ini := TIniFile.Create(CaminhoINITransportadora);
    try
      BasePath := Ini.ReadString('Database', 'Path', PathPadraoTransportadora);
    finally
      Ini.Free;
    end;
  end
  else
    BasePath := PathPadraoTransportadora;
    ForceDirectories(BasePath);
    Result := TPath.Combine(BasePath, 'CargoCteDB.db'); //Retorna Caminho junto do nome do Banco
end;

end.
