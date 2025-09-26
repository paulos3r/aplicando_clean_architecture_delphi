unit uMenuPrincipal;

interface

uses  Winapi.Windows, System.SysUtils;

procedure Menu;

procedure MenuCliente;
procedure CadastrarCliente;
procedure AlterarCliente;
procedure ExcluirCliente;
procedure ConsultarCliente;

procedure MenuVeiculo;
procedure CadastrarVeiculo;
procedure AlterarVeiculo;
procedure ExcluirVeiculo;
procedure ConsultarVeiculo;

procedure MenuLocacao;
procedure CadastrarLocacao;
procedure AlterarLocacao;
procedure ExcluirLocacao;
procedure ConsultarLocacao;

procedure Clean;
procedure Sair;

function Modulos : string;



implementation

procedure Menu;
var
  Codigo : integer;
  Modulo : string;
begin

  writeln('Menu Principal');
  writeln;

  Modulo := '1 - Cliente ' + #13#10 +
            '2 - Veiculos' + #13#10 +
            '3 - Locação'  + #13#10 +
            '4 - Sair'     + #13#10;

  writeln(Modulo);
  write(Output, 'Opção: ');
  readln(Input,codigo);

  case Codigo of
    1 : MenuCliente;
    2 : MenuVeiculo;
    3 : MenuLocacao;
    4 : Sair;
  end;

end;

procedure MenuCliente;
var
  Codigo : integer;
begin
  clean;

  Writeln('Menu Cliente');
  writeln;

  Writeln(Modulos);
  Writeln(Output,'Opção: ');
  readln(Input, Codigo);

  case Codigo of
    1 : CadastrarCliente;
    2 : AlterarCliente;
    3 : ExcluirCliente;
    4 : ConsultarCliente;
    5 : Menu;
    else
      begin
        writeln('Opção invalida');
        readln;
      end;
  end;
end;
procedure CadastrarCliente;
begin
  Clean;
  Writeln('Cadastrar Cliente');

  Readln;

  Menu;
end;
procedure AlterarCliente;
begin
  Clean;
  Writeln('Alterar Cliente');

  Readln;

  Menu;
end;
procedure ExcluirCliente;
begin
  Clean;
  Writeln('Excluir Cliente');

  Readln;

  Menu;
end;
procedure ConsultarCliente;
begin
  Clean;
  Writeln('Consultar Cliente');

  Readln;

  Menu;
end;

procedure MenuVeiculo;
var
  Codigo : integer;
begin
  clean;

  Writeln('Menu Veiculos');
  writeln;

  Writeln(Modulos);
  Writeln(Output,'Opção: ');
  Readln(Input, Codigo);

  case Codigo of
    1 : CadastrarVeiculo;
    2 : AlterarVeiculo;
    3 : ExcluirVeiculo;
    4 : ConsultarVeiculo;
    5 : Menu;
    else
      begin
        writeln('Opção invalida');
        readln;
      end;
  end;

end;
procedure CadastrarVeiculo;
begin
  Clean;
  Writeln('Cadastrar Veiculo');

  Readln;

  Menu;
end;
procedure AlterarVeiculo;
begin
  Clean;
  Writeln('Alterar Veiculo');

  Readln;

  Menu;
end;
procedure ExcluirVeiculo;
begin
  Clean;
  Writeln('Excluir Veiculo');

  Readln;

  Menu;
end;
procedure ConsultarVeiculo;
begin
  Clean;
  Writeln('Consultar Veiculo');

  Readln;

  Menu;
end;

procedure MenuLocacao;
var
  Codigo : integer;
begin
  clean;

  Writeln('Menu Locação');
  writeln;

  Writeln(Modulos);
  Writeln(Output,'Opção: ');
  Readln(Input, Codigo);

  case Codigo of
    1 : CadastrarLocacao;
    2 : AlterarLocacao;
    3 : ExcluirLocacao;
    4 : ConsultarLocacao;
    5 : Menu;
    else
      begin
        writeln('Opção invalida');
        readln;
      end;
  end;

end;
procedure CadastrarLocacao;
begin
  Clean;
  Writeln('Cadastrar Locação');

  Readln;

  Menu;
end;
procedure AlterarLocacao;
begin
  Clean;
  Writeln('Alterar Locação');

  Readln;

  Menu;
end;
procedure ExcluirLocacao;
begin
  Clean;
  Writeln('Excluir Locação');

  Readln;

  Menu;
end;
procedure ConsultarLocacao;
begin
  Clean;
  Writeln('Consultar Locação');

  Readln;

  Menu;
end;

procedure Clean;
var
  stdout: THandle;
  csbi: TConsoleScreenBufferInfo;
  ConsoleSize: DWORD;
  NumWritten: DWORD;
  Origin: TCoord;
begin
  stdout := GetStdHandle(STD_OUTPUT_HANDLE);
  Win32Check(stdout<>INVALID_HANDLE_VALUE);
  Win32Check(GetConsoleScreenBufferInfo(stdout, csbi));
  ConsoleSize := csbi.dwSize.X * csbi.dwSize.Y;
  Origin.X := 0;
  Origin.Y := 0;
  Win32Check(FillConsoleOutputCharacter(stdout, ' ', ConsoleSize, Origin,
    NumWritten));
  Win32Check(FillConsoleOutputAttribute(stdout, csbi.wAttributes, ConsoleSize, Origin,
    NumWritten));
  Win32Check(SetConsoleCursorPosition(stdout, Origin));
end;
procedure Sair;
begin

end;

function Modulos : string;
begin

  result := '1 - Cadastrar' + #13#10 +
            '2 - Alterar'   + #13#10 +
            '3 - Editar'    + #13#10 +
            '4 - Consultar' + #13#10 +
            '5 - Voltar';
end;

end.
