unit Simplex.Interfaces.Crud;

interface

uses
  Data.DB, Simplex.Entity.Pessoa, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Simplex.Interfaces.CaixaDialogo;

type
  iEntity = interface
    ['{9835B439-168E-4A44-9A13-F25DB8102C33}']
    function Pessoa : TPessoa;
  end;

  iViewModelControls = interface;

  iViewModelPessoa = interface
    ['{9B4123E4-E668-47CD-866B-31BC5E8DE686}']
     function InserirPessoa          : iViewModelPessoa;
     function InserirEndereco        : iViewModelPessoa;
     function InserirContato         : iViewModelPessoa;
     function EditarPessoa           : iViewModelPessoa;
     function SalvarPessoa           : iViewModelPessoa;
     function DeletarPessoa          : iViewModelPessoa;

     function DeletarContato         : iViewModelPessoa;
     function DeletarEndereco        : iViewModelPessoa;
     function Cancelar               : iViewModelPessoa;
     function Open                   : iViewModelPessoa; overload;
     function Open(aValue : Integer) : iViewModelPessoa; overload;
     function DataSet(aValue : TDataSource) : iViewModelPessoa;
     function DataSetEnderecos(aValue : TDataSource) : iViewModelPessoa;
     function DataSetContatos(aValue : TDataSource) : iViewModelPessoa;
     function Entidade       : iEntity;
     //Controles de Tela
     function Controls : iViewModelControls;
     //Interface de Caixa de dial�gos
     function Dialog: iMessageDialog;
  end;

  iViewModelControls = interface
    ['{0539617E-920C-4106-A9CD-575A9EB7978E}']
    function StatusDataSource(aDataSource : TDataSource) : iViewModelControls;
    function BrushPanel(var aValue : TPanel): iViewModelControls;
    function StatusLabel(var aValue : TLabel): iViewModelControls;
    function canClose : Boolean;
  end;

implementation

end.
