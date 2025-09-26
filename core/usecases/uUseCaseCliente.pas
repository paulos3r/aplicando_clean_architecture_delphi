unit uUseCaseCliente;

interface

uses uiUseCaseCliente, system.SysUtils, uCliente, uDTOCliente, uResponse, uEnum;

type
  TUseCaseCliente = class(TInterfacedObject, IUseCaseCliente)

  function Cadastrar( cliente : TCliente ): Tresponse;
  function Alterar( cliente   : TCliente ): Tresponse;
  function Deletar( cliente   : TCliente ): Tresponse;
  function Consultar( Dto     : DtoCliente ): Tresponse;

end;

implementation

{ TUseCaseCliente }

function TUseCaseCliente.Alterar(cliente: TCliente): Tresponse;
var response : Tresponse;
begin

  try
    response.sucess   := true;
    response.ErrorCode:= 0;
    response.Massage  := RetornarMensagemResponse.ALTERADO_COM_SUCESSO;
    response.Data     := nil;

  except
    on e:exception do
    begin

    end;

  end;

  result := response;

end;

function TUseCaseCliente.Cadastrar(cliente: TCliente): Tresponse;
var response : Tresponse;
begin

  try
    response.sucess   := true;
    response.ErrorCode:= 0;
    response.Massage  := RetornarMensagemResponse.CADASTRADO_COM_SUCESSO;
    response.Data     := nil;

  except
    on e:exception do
    begin

    end;

  end;

  result := response;

end;

function TUseCaseCliente.Consultar(Dto: DtoCliente): Tresponse;
var response : Tresponse;
begin

  try
    response.sucess   := true;
    response.ErrorCode:= 0;
    response.Massage  := RetornarMensagemResponse.CONSULTA_REALIZADA_COM_SUCESSO;
    response.Data     := nil;

  except
    on e:exception do
    begin

    end;

  end;

  result := response;

end;

function TUseCaseCliente.Deletar(cliente: TCliente): Tresponse;
var response : Tresponse;
begin

  try
    response.sucess   := true;
    response.ErrorCode:= 0;
    response.Massage  := RetornarMensagemResponse.DELETADO_COM_SUCESSO;
    response.Data     := nil;

  except
    on e:exception do
    begin

    end;

  end;

  result := response;

end;

end.
