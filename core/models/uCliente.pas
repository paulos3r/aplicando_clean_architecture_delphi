unit uCliente;

interface

type
  TCliente=class
  private
    FLogradouro: string;
    FBairro: string;
    FUF: string;
    FCep: string;
    FDocumento: string;
    FId: Integer;
    FComplemento: string;
    FNome: string;
    FCidade: string;
    FTelefone: string;
    procedure SetBairro(const Value: string);
    procedure SetCep(const Value: string);
    procedure SetCidade(const Value: string);
    procedure SetComplemento(const Value: string);
    procedure SetDocumento(const Value: string);
    procedure SetId(const Value: Integer);
    procedure SetLogradouro(const Value: string);
    procedure SetNome(const Value: string);
    procedure SetTelefone(const Value: string);
    procedure SetUF(const Value: string);
  published
    property Id        : Integer read FId write SetId;
    property Nome      : string read FNome write SetNome;
    property Documento : string read FDocumento write SetDocumento;
    property Cep       : string read FCep write SetCep;
    property Logradouro : string read FLogradouro write SetLogradouro;
    property Complemento : string read FComplemento write SetComplemento;
    property Bairro    : string read FBairro write SetBairro;
    property Cidade    : string read FCidade write SetCidade;
    property UF        : string read FUF write SetUF;
    property Telefone  : string read FTelefone write SetTelefone;
  end;

implementation

{ TCliente }

procedure TCliente.SetBairro(const Value: string);
begin
  FBairro := Value;
end;

procedure TCliente.SetCep(const Value: string);
begin
  FCep := Value;
end;

procedure TCliente.SetCidade(const Value: string);
begin
  FCidade := Value;
end;

procedure TCliente.SetComplemento(const Value: string);
begin
  FComplemento := Value;
end;

procedure TCliente.SetDocumento(const Value: string);
begin
  FDocumento := Value;
end;

procedure TCliente.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TCliente.SetLogradouro(const Value: string);
begin
  FLogradouro := Value;
end;

procedure TCliente.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TCliente.SetTelefone(const Value: string);
begin
  FTelefone := Value;
end;

procedure TCliente.SetUF(const Value: string);
begin
  FUF := Value;
end;

end.
