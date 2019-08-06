unit Simplex.Entity.Pessoa;

interface
uses
  Aurelius.Mapping.Attributes, Aurelius.Types.Nullable, System.Generics.Collections;

type
  TEnderecos = class;
  TContatos  = class;

  [Entity]
  [AutoMapping]
  TPessoa = class
    private
      FId: Integer;
      FNomeRazao: Nullable<string>;
      FApelidoFantasia: Nullable<string>;
      FEnderecos: TList<TEnderecos>;
      FContatos: TList<TContatos>;
      FCpfCnpj: Nullable<String>;
      FRgIe: Nullable<String>;
      FFisicaJuridica: Nullable<String>;
      [Transient]
      FLixeira : Nullable<Currency>;
      function GetCpfCnpj: Nullable<String>;
//    procedure SetCpfCnpj(const Value: Nullable<String>);

    public
      constructor Create;
      destructor Destroy; override;
      class function New : TPessoa;
      property Id: Integer read FId write Fid;
      property NomeRazao: Nullable<string> read FNomeRazao write FNomeRazao;
      property ApelidoFantasia: Nullable<string> read FApelidoFantasia write FApelidoFantasia;
      property CpfCnpj: Nullable<String> read GetCpfCnpj write FCpfCnpj;
      property RgIe: Nullable<String> read FRgIe write FRgIe;
      property FisicaJuridica: Nullable<String> read FFisicaJuridica write FFisicaJuridica;
      property Enderecos: TList<TEnderecos> read FEnderecos write FEnderecos;
      property Contatos: TList<TContatos> read FContatos write FContatos;
      property Lixeira: Nullable<Currency> read FLixeira write FLixeira;
  end;

  [Entity]
  [AutoMapping]
  TEnderecos = class
    private
    FId: Integer;
    FLogradouro: Nullable<string>;
    FBairro: Nullable<string>;
    FCep: Nullable<string>;
    FNumero: Nullable<string>;
    FComplemento: Nullable<string>;
    FCidade: Nullable<string>;
    FObservacao: Nullable<string>;
    FUF: Nullable<string>;
    function GetCep: Nullable<string>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : TEnderecos;
      property Id: Integer read FId write FId;
      property Logradouro: Nullable<string> read FLogradouro write FLogradouro;
      property Bairro: Nullable<string> read FBairro write FBairro;
      property Cidade: Nullable<string> read FCidade write FCidade;
      property Numero: Nullable<string> read FNumero write FNumero;
      property Cep: Nullable<string> read GetCep write FCep;
      property Complemento: Nullable<string> read FComplemento write FComplemento;
      property UF: Nullable<string> read FUF write FUF;
      property Observacao: Nullable<string> read FObservacao write FObservacao;
  end;

  [Entity]
  [AutoMapping]
  TContatos = class
  private
    FId: Integer;
    FContato: Nullable<string>;
    FEmail: Nullable<string>;
    FFoneComercial: Nullable<string>;
    FFoneResidencial: Nullable<string>;
    FFoneCelular: Nullable<string>;
    FObservacao: Nullable<string>;
    function GetFoneCelular: Nullable<string>;
    function GetFoneComercial: Nullable<string>;
    function GetFoneResidencial: Nullable<string>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : TContatos;
      property Id: Integer read FId write FId;
      property Contato: Nullable<string> read FContato write FContato;
      property Email  : Nullable<string> read FEmail write FEmail;
      property FoneComercial  : Nullable<string> read GetFoneComercial write FFoneComercial;
      property FoneResidencial: Nullable<string> read GetFoneResidencial write FFoneResidencial;
      property FoneCelular  : Nullable<string> read GetFoneCelular write FFoneCelular;
      property Observacao: Nullable<string> read FObservacao write FObservacao;

  end;


implementation

uses
  System.SysUtils, System.MaskUtils;

{ TPessoa }

constructor TPessoa.Create;
begin
  FEnderecos := TList<TEnderecos>.Create;
  FContatos  := TList<TContatos>.Create;
end;

destructor TPessoa.Destroy;
begin
  FreeAndNil(FEnderecos);
  FreeAndNil(FContatos);
  inherited;
end;

function TPessoa.GetCpfCnpj: Nullable<String>;
begin
  if (FFisicaJuridica = 'F�sica') and (FCpfCnpj <> '') and (not FCpfCnpj.IsNull)   then
    Result := FormatMaskText('000\.000\.000\-00;0;', FCpfCnpj);
  if (FFisicaJuridica = 'Jur�dica') and (FCpfCnpj <> '') and (not FCpfCnpj.IsNull) then
    Result := FormatMaskText('00\.000\.000\/0000\-00;0;', FCpfCnpj);
end;

class function TPessoa.New: TPessoa;
begin
  Result := Self.Create;
end;

{ TPessoaEnderecos }

constructor TEnderecos.Create;
begin
end;

destructor TEnderecos.Destroy;
begin
  inherited;
end;

function TEnderecos.GetCep: Nullable<string>;
begin
  Result := FCep;
  if (FCep <> '') and (not FCep.IsNull)   then
    Result := FormatMaskText('00000\-000;0;', FCep);
end;

class function TEnderecos.New: TEnderecos;
begin
  Result := Self.Create;
end;

{ TContatos }

constructor TContatos.Create;
begin


end;

destructor TContatos.Destroy;
begin
  inherited;
end;

function TContatos.GetFoneCelular: Nullable<string>;
begin
  Result := FFoneCelular;
  if (FFoneCelular <> '') and (not FFoneCelular.IsNull)   then
    Result := FormatMaskText('(00)00000\-0000;0;', FFoneCelular);
end;

function TContatos.GetFoneComercial: Nullable<string>;
begin
  Result := FFoneComercial;
  if (FFoneComercial <> '') and (not FFoneComercial.IsNull)   then
    Result := FormatMaskText('(00)0000\-0000;0;', FFoneComercial);
end;

function TContatos.GetFoneResidencial: Nullable<string>;
begin
  Result := FFoneResidencial;
  if (FFoneResidencial <> '') and (not FFoneResidencial.IsNull)   then
    Result := FormatMaskText('(00)0000\-0000;0;', FFoneResidencial);
end;

class function TContatos.New: TContatos;
begin
  Result := Self.Create;
end;

end.
