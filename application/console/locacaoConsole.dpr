program locacaoConsole;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uMenuPrincipal in 'uMenuPrincipal.pas',
  uCliente in '..\..\core\models\uCliente.pas',
  uiUseCaseCliente in '..\..\core\gateways\uiUseCaseCliente.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
    Menu;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
