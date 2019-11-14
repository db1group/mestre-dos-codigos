unit uPessoaService;

interface

uses
  uPessoa;

type
  IPessoaService = interface(IInterface)
    ['{00129FD5-7548-4DA7-9FA3-DD37C2603C2A}']
    function Salvar(const APessoa: TPessoa): boolean;
  end;

implementation

end.
