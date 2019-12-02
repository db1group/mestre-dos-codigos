unit uPessoaRepository.Impl;

interface

uses
  uPessoaRepository, uPessoa;

type
  TPessoaRepository = class(TInterfacedObject, IPessoaRepository)

  public
    function PersistirDados(const APessoa: TPessoa): Boolean;
  end;

implementation

uses
  Data.DB,
  System.SysUtils;

{ TPessoaRepository }

function TPessoaRepository.PersistirDados(const APessoa: TPessoa): Boolean;
var
  _valorRandomico: integer;
  _salvoSucesso: Boolean;
begin
  if APessoa.ID = TGUID.Empty then
    raise EDatabaseError.Create('Não foi informado o ID da pessoa');

  Randomize;
  _valorRandomico := Random(100);

  _salvoSucesso := ((_valorRandomico mod 2) = 0);

  Result := _salvoSucesso;
end;

end.
