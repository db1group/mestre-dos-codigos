unit uPessoa;

interface

type
  TEstadoCivil = (ecSolteiro, ecCasado, ecViuvo);

  TPessoa = class
  private
    FDataNascimento: TDateTime;
    FEstadoCivil: TEstadoCivil;
    FID: TGuid;
    FNome: string;
    procedure SetDataNascimento(const Value: TDateTime);
    procedure SetEstadoCivil(const Value: TEstadoCivil);
    procedure SetID(const Value: TGuid);
    procedure SetNome(const Value: string);
  published
    property ID: TGuid read FID write SetID;
    property Nome: string read FNome write SetNome;
    property DataNascimento: TDateTime read FDataNascimento write SetDataNascimento;
    property EstadoCivil: TEstadoCivil read FEstadoCivil write SetEstadoCivil;
  end;

implementation

{ TPessoa }

procedure TPessoa.SetDataNascimento(const Value: TDateTime);
begin
  FDataNascimento := Value;
end;

procedure TPessoa.SetEstadoCivil(const Value: TEstadoCivil);
begin
  FEstadoCivil := Value;
end;

procedure TPessoa.SetID(const Value: TGuid);
begin
  FID := Value;
end;

procedure TPessoa.SetNome(const Value: string);
begin
  FNome := Value;
end;

end.
