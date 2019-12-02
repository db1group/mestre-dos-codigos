program AppDesktop;

uses
  Vcl.Forms,
  uPessoaForm in 'uPessoaForm.pas' {frmSalvadorDePessoas},
  uPessoa in 'uPessoa.pas',
  uPessoaService in 'uPessoaService.pas',
  uPessoaService.Impl in 'uPessoaService.Impl.pas',
  uPessoaRepository in 'uPessoaRepository.pas',
  uPessoaRepository.Impl in 'uPessoaRepository.Impl.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSalvadorDePessoas, frmSalvadorDePessoas);
  Application.Run;
end.
