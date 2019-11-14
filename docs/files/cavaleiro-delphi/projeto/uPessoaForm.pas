unit uPessoaForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, uPessoaService, uPessoaRepository, uPessoa,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB;

type
  TfrmSalvadorDePessoas = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Nome: TEdit;
    EstadoCivil: TComboBox;
    Salvar: TButton;
    DataNascimento: TDateTimePicker;
    DataSource1: TDataSource;
    procedure SalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure InicializarEstadoCivil;
    procedure InicializarControlesVisuais;
    function PegarPessoaService: IPessoaService;
    function PessoaFactory: TPessoa;
    procedure MostrarResultadoSalvar(const ASucesso: Boolean;
      const APessoa: TPessoa);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSalvadorDePessoas: TfrmSalvadorDePessoas;

implementation

uses
  System.TypInfo,
  uPessoaService.Impl,
  uPessoaRepository.Impl;

{$R *.dfm}

procedure TfrmSalvadorDePessoas.FormCreate(Sender: TObject);
begin
  InicializarControlesVisuais;
end;

procedure TfrmSalvadorDePessoas.InicializarControlesVisuais;
begin
  InicializarEstadoCivil;
  DataNascimento.DateTime := Now;
end;

function TfrmSalvadorDePessoas.PegarPessoaService: IPessoaService;
var
  _pessoaRepository: IPessoaRepository;
begin
  _pessoaRepository := TPessoaRepository.Create;
  Result := TPessoaService.Create(_pessoaRepository);
end;

procedure TfrmSalvadorDePessoas.InicializarEstadoCivil;
var
  _estadoCivil: TEstadoCivil;
  _estadoCivilStr: string;
begin
  EstadoCivil.Items.Clear;
  for _estadoCivil := Low(TEstadoCivil) to High(TEstadoCivil) do
  begin
    _estadoCivilStr := GetEnumName(TypeInfo(TEstadoCivil), Ord(_estadoCivil))
      .Substring(2);
    EstadoCivil.Items.Add(_estadoCivilStr);
  end;
  EstadoCivil.ItemIndex := 0;
end;

procedure TfrmSalvadorDePessoas.SalvarClick(Sender: TObject);
var
  _pessoa: TPessoa;
  _dadosSalvosComSucesso: Boolean;
begin
  _pessoa := PessoaFactory;
  try
    var _pessoaService := PegarPessoaService;
    _dadosSalvosComSucesso := _pessoaService.Salvar(_pessoa);
    MostrarResultadoSalvar(_dadosSalvosComSucesso, _pessoa);
  finally
    _pessoa.Free;
  end;
end;

function TfrmSalvadorDePessoas.PessoaFactory: TPessoa;
begin
  Result := TPessoa.Create;
  Result.ID := TGuid.NewGuid;
  Result.Nome := Nome.Text;
  Result.DataNascimento := DataNascimento.DateTime;
  Result.EstadoCivil := TEstadoCivil(EstadoCivil.ItemIndex);
end;

procedure TfrmSalvadorDePessoas.MostrarResultadoSalvar(const ASucesso: Boolean;
  const APessoa: TPessoa);
var
  _msg: string;
begin
  _msg := 'Não foi possível salvar os dados de %s pois houve um erro no sistema';
  if ASucesso then
    _msg := 'Os dados de %s foram salvos com sucesso!';
  _msg := Format(_msg, [APessoa.Nome]);
  ShowMessage(_msg);
end;

end.
