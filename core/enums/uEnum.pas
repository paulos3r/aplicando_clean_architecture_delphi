unit uEnum;

interface

type
  TmensagemResponse = record
    CADASTRADO_COM_SUCESSO,
    ALTERADO_COM_SUCESSO,
    CONSULTA_REALIZADA_COM_SUCESSO,
    CONSULTA_SEM_RETORNO,
    DELETADO_COM_SUCESSO : string;
  end;

  function RetornarMensagemResponse : TmensagemResponse;

implementation

function RetornarMensagemResponse : TmensagemResponse;
begin
  result.CADASTRADO_COM_SUCESSO := 'Cadastrado com sucesso!';
  result.ALTERADO_COM_SUCESSO := 'Alterado com sucesso';
  Result.DELETADO_COM_SUCESSO :=  'Deletado com sucesso';
  Result.CONSULTA_REALIZADA_COM_SUCESSO :='Consulta realizada com sucesso';
  Result.CONSULTA_SEM_RETORNO := 'Consulta sem retorno';
end;

end.
