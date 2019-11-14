unit uPessoaRepository;
{$M+}
interface

uses
  uPessoa;

type
  IPessoaRepository = interface(IInterface)
    ['{C8776D09-558F-4866-89EF-8749ED8ADC8A}']
    function PersistirDados(const APessoa: TPessoa): boolean;
  end;

implementation

end.
