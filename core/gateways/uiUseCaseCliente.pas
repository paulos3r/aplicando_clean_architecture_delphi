unit uiUseCaseCliente;

interface

uses uCliente;

type

  IUseCaseCliente = interface
    function Cadastrar( cliente : TCliente ): Tresponse;
    function Alterar( cliente   : TCliente ): Tresponse;
    function Deletar( cliente   : TCliente ): Tresponse;
    function Consultar( Dto     : DtoCliente ): Tresponse;
  end;

implementation
end.
