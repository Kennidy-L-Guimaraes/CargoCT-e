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
  DadosFiscais.Entidade in '..\..\src\Domain\Entities\DadosFiscais.Entidade.pas';

{$R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

