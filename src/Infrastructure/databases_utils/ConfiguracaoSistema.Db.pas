unit ConfiguracaoSistema.Db;

interface

uses
  System.SysUtils, System.IniFiles, System.IOUtils;

type
  TConfiguracaoSistema = class
  private
    class function ObterCaminhoINI: string; static;
    class function ObterPathPadrao: string; static;
  public
    class function ObterCaminhoBanco: string; static;
  end;

implementation

{ TConfiguracaoSistema }

class function TConfiguracaoSistema.ObterCaminhoINI: string;
begin
  Result := TPath.Combine(
    ExtractFilePath(ParamStr(0)),
    'configdb.ini'
  );
end;

class function TConfiguracaoSistema.ObterPathPadrao: string;
begin
  // fallback seguro (produção)
  Result := 'C:\ProgramData\CargoCte';
end;

class function TConfiguracaoSistema.ObterCaminhoBanco: string;
var
  Ini     : TIniFile;
  BasePath: string;
begin
  if FileExists(ObterCaminhoINI) then
  begin
    Ini := TIniFile.Create(ObterCaminhoINI);
    try
      BasePath := Ini.ReadString('Database', 'Path', ObterPathPadrao);
    finally
      Ini.Free;
    end;
  end
  else
    BasePath := ObterPathPadrao;
    ForceDirectories(BasePath);
    Result := TPath.Combine(BasePath, 'CargoCteDB.db'); //Retorna Caminho junto do nome do Banco
end;

end.
