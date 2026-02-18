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
  TestEndereco in '..\Unit\Domain\Entities\TestEndereco.pas',
  Endereco.Entidade in '..\..\src\Domain\Entities\Endereco.Entidade.pas',
  Endereco.Tipo.CEP in '..\..\src\Domain\ValueObjects\Endereco.Tipo.CEP.pas',
  TestIdentidadeFiscal in '..\Unit\Domain\Entities\TestIdentidadeFiscal.pas',
  IdentidadeFiscal.Entidade in '..\..\src\Domain\Entities\IdentidadeFiscal.Entidade.pas';

{$R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

