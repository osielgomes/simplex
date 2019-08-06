unit Simplex.Interfaces.Entity;

interface
uses
  Simplex.Interfaces.Crud, Simplex.Entity.Pessoa;

type

  iEntidade = interface
    ['{9835B439-168E-4A44-9A13-F25DB8102C33}']
    function Pessoa : iCrud<TPessoa>;
  end;

  iFactoryEntity = interface
    ['{BF5BAFAB-6676-4276-AB92-ACFA42B96133}']
    function Entidade : iEntidade;
  end;


implementation

end.
