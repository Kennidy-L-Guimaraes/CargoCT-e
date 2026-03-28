unit ConfiRepository.Interfaces;

interface

uses Config.Entidade;
 type
  IConfigRepository = interface
    ['{43FF983C-B13D-4E93-ABD8-7F37EE53098F}']
    procedure Salvar(Config: TConfig);
    function Obter: TConfig;
    procedure CommitAndClose;
  end;

implementation

end.
