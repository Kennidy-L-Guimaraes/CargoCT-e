program CargoCTeTests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  TestEndereco.Entidade in '..\Unit\Domain\Entities\TestEndereco.Entidade.pas',
  Endereco.Entidade in '..\..\src\Domain\Entities\Endereco.Entidade.pas',
  Endereco.Tipo.CEP in '..\..\src\Domain\ValueObjects\Endereco.Tipo.CEP.pas',
  TestIdentidadeFiscal.Entidade in '..\Unit\Domain\Entities\TestIdentidadeFiscal.Entidade.pas',
  IdentidadeFiscal.Entidade in '..\..\src\Domain\Entities\IdentidadeFiscal.Entidade.pas',
  Validar.Exceptions in '..\..\src\Domain\Exceptions\Validar.Exceptions.pas',
  TestDadosFiscais.Entidade in '..\Unit\Domain\Entities\TestDadosFiscais.Entidade.pas',
  DadosFiscais.Entidade in '..\..\src\Domain\Entities\DadosFiscais.Entidade.pas',
  TestValidar.Exceptions in '..\Unit\Domain\Exceptions\TestValidar.Exceptions.pas',
  TestDadosOperacionais.Entidade in '..\Unit\Domain\Entities\TestDadosOperacionais.Entidade.pas',
  DadosOperacionais.Entidade in '..\..\src\Domain\Entities\DadosOperacionais.Entidade.pas',
  Veiculo.Tipo.Placa in '..\..\src\Domain\ValueObjects\Veiculo.Tipo.Placa.pas',
  TestVeiculo.Entidade in '..\Unit\Domain\Entities\TestVeiculo.Entidade.pas',
  Veiculo.Entidade in '..\..\src\Domain\Entities\Veiculo.Entidade.pas',
  TestIdentidadeFiscal.Tipo.CNPJ in '..\Unit\Domain\ValueObjects\TestIdentidadeFiscal.Tipo.CNPJ.pas',
  TestEndereco.Tipo.CEP in '..\Unit\Domain\ValueObjects\TestEndereco.Tipo.CEP.pas';

{$R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

