unit uPessoaService.Impl;

interface

uses
  uPessoaService, uPessoa, uPessoaRepository;

type
  TPessoaService = class(TInterfacedObject, IPessoaService)
  private
    FRepository: IPessoaRepository;
  public
    function Salvar(const APessoa: TPessoa): Boolean;
    constructor Create(const ARepository: IPessoaRepository); reintroduce;
  end;

implementation

uses
  Data.DB, System.SysUtils, System.DateUtils;

{ TPessoaService }

constructor TPessoaService.Create(const ARepository: IPessoaRepository);
begin
  FRepository := ARepository
end;

function TPessoaService.Salvar(const APessoa: TPessoa): Boolean;
begin
  Result := False;
  try
    if APessoa.DataNascimento = 0 then
      raise Exception.Create('A Data de nascimento não foi informada');

    if YearsBetween(Now, APessoa.DataNascimento) < 18 then
      raise Exception.Create('Menor de idade não pode ser cadastrado');

    if APessoa.Nome.Trim.IsEmpty then
      raise Exception.Create('O nome não foi informado');

    Result := FRepository.PersistirDados(APessoa);
  except
    on E: EDatabaseError do
    begin
      raise EArgumentException.create(E.Message);
    end
    else
      raise;
  end;
end;

end.
