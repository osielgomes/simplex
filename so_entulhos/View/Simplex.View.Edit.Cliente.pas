unit Simplex.View.Edit.Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Simplex.View.CrudEdit.Template, Vcl.StdCtrls, dxGDIPlusClasses, Vcl.ExtCtrls,
  Data.DB, Vcl.WinXCtrls, Vcl.WinXPanels, cxStyles, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Simplex.Interfaces.Crud, Vcl.Grids, Vcl.DBGrids, System.ImageList, Vcl.ImgList, cxImageList, Vcl.Mask, Vcl.DBCtrls,
  cxImageComboBox, cxTextEdit, cxGridBandedTableView, cxGridDBBandedTableView;

type
  TfrmEditCliente = class(TfrmCrudEdit)
    dsPessoa: TDataSource;
    lblNomeRazao: TLabel;
    lblApelidoFantasia: TLabel;
    pnlEditCard: TPanel;
    pnlMenu: TPanel;
    pnlBasico: TPanel;
    pnlContatos: TPanel;
    pnlEnderecos: TPanel;
    cardMain: TCardPanel;
    cardBasico: TCard;
    cardEnderecos: TCard;
    cardContatos: TCard;
    lblContato: TLabel;
    lblEmail: TLabel;
    lblFoneComercial: TLabel;
    lblFoneResidencial: TLabel;
    lblCelular: TLabel;
    lblContatoObservacao: TLabel;
    CoresGridstyle: TcxStyleRepository;
    corBox: TcxStyle;
    corOdd: TcxStyle;
    corcontent: TcxStyle;
    corEven: TcxStyle;
    corselection: TcxStyle;
    corheader: TcxStyle;
    corinactive: TcxStyle;
    corGroupbyBox: TcxStyle;
    corBandHeader: TcxStyle;
    dsContatos: TDataSource;
    dsEnderecos: TDataSource;
    pnlEditBasico: TPanel;
    lblCPFCNPJ: TLabel;
    lblRGIE: TLabel;
    pnlEditEnderecos: TPanel;
    lblLogradouro: TLabel;
    lblNumero: TLabel;
    lblBairro: TLabel;
    lblCidade: TLabel;
    lblUF: TLabel;
    lblCEP: TLabel;
    pnlNovoEndereco: TPanel;
    imgNovoEndereco: TImage;
    lblComplemento: TLabel;
    lblObs: TLabel;
    pnlNovoContato: TPanel;
    imgNovoContato: TImage;
    edtCEP: TDBEdit;
    edtLogradouro: TDBEdit;
    edtNumero: TDBEdit;
    edtComplemento: TDBEdit;
    edtBairro: TDBEdit;
    edtCidade: TDBEdit;
    memoObs: TDBMemo;
    edtNomeRazao: TDBEdit;
    edtApelidoFantasia: TDBEdit;
    edtContato: TDBEdit;
    edtEmail: TDBEdit;
    edtFoneComercial: TDBEdit;
    edtResidencial: TDBEdit;
    edtFoneCelular: TDBEdit;
    edtContatoObservacao: TDBEdit;
    edtRgIe: TDBEdit;
    rgTipoPessoa: TDBRadioGroup;
    cbbUF: TDBComboBox;
    edtCpfCnpj: TDBEdit;
    lblDicaCpf: TLabel;
    cxGridcxgrd11: TcxGrid;
    bandaContatos: TcxGridDBBandedTableView;
    colbandacxgrd1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    colPrincipalColumn1: TcxGridDBBandedColumn;
    colPrincipalColumn2: TcxGridDBBandedColumn;
    colPrincipalColumn3: TcxGridDBBandedColumn;
    gridlvl1: TcxGridLevel;
    colContatosColumn6: TcxGridDBBandedColumn;
    colContatosColumn7: TcxGridDBBandedColumn;
    imgList: TcxImageList;
    cxGrid2: TcxGrid;
    bandaEnderecos: TcxGridDBBandedTableView;
    colunaDelete: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    procedure pnlCancelarClick(Sender: TObject);
    procedure pnlContatosClick(Sender: TObject);
    procedure pnlEnderecosClick(Sender: TObject);
    procedure pnlBasicoClick(Sender: TObject);
    procedure pnlSalvarClick(Sender: TObject);
    procedure cardMainCardChange(Sender: TObject; PrevCard, NextCard: TCard);
    procedure FormShow(Sender: TObject);
    procedure pnlNovoEnderecoClick(Sender: TObject);
    procedure dsEnderecosStateChange(Sender: TObject);
    procedure imgFecharClick(Sender: TObject);
    procedure dsPessoaStateChange(Sender: TObject);
    procedure dsContatosStateChange(Sender: TObject);
    procedure pnlNovoContatoClick(Sender: TObject);
    procedure edtCpfCnpjKeyPress(Sender: TObject; var Key: Char);
    procedure rgTipoPessoaClick(Sender: TObject);
    procedure edtCpfCnpjEnter(Sender: TObject);
    procedure edtCpfCnpjExit(Sender: TObject);
    procedure edtCEPEnter(Sender: TObject);
    procedure edtCEPExit(Sender: TObject);
    procedure edtFoneComercialEnter(Sender: TObject);
    procedure edtFoneComercialExit(Sender: TObject);
    procedure edtFoneCelularExit(Sender: TObject);
    procedure edtFoneCelularEnter(Sender: TObject);
    procedure bandaContatosCustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure bandaContatosCustomDrawBandHeader(Sender: TcxGridBandedTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridBandHeaderViewInfo; var ADone: Boolean);
    procedure bandaContatosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure bandaContatosCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure bandaEnderecosCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure bandaEnderecosCustomDrawBandHeader(Sender: TcxGridBandedTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridBandHeaderViewInfo; var ADone: Boolean);
    procedure bandaEnderecosCustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure bandaEnderecosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure lblStatusClick(Sender: TObject);
  private
    FViewModel : iViewModelPessoa;
    FID : Integer;
    procedure HideShape(aValueMenu, aValueClicado : TPanel);
  public
    destructor Destroy; override;
    procedure InsertEditCustomer(aValue : Integer);
  end;

var
  frmEditCliente: TfrmEditCliente;

implementation
uses
  Simplex.ViewModel.Pessoa;

{$R *.dfm}

procedure TfrmEditCliente.pnlBasicoClick(Sender: TObject);
begin
  cardMain.ActiveCard := cardBasico;
  HideShape(pnlMenu, pnlBasico);
end;

procedure TfrmEditCliente.pnlCancelarClick(Sender: TObject);
begin
  FViewModel.Cancelar;
  inherited;
end;

procedure TfrmEditCliente.pnlContatosClick(Sender: TObject);
begin
  cardMain.ActiveCard := cardContatos;
  HideShape(pnlMenu, pnlContatos);
end;

procedure TfrmEditCliente.pnlEnderecosClick(Sender: TObject);
begin
  cardMain.ActiveCard := cardEnderecos;
  HideShape(pnlMenu, pnlEnderecos);
end;

procedure TfrmEditCliente.pnlNovoContatoClick(Sender: TObject);
begin
  pnlSalvarClick(Self);
  FViewModel.InserirContato;
  if edtContato.CanFocus then edtContato.SetFocus;
end;

procedure TfrmEditCliente.pnlNovoEnderecoClick(Sender: TObject);
begin
  pnlSalvarClick(Self);
  FViewModel.InserirEndereco;
  if edtCEP.CanFocus then edtCEP.SetFocus;
end;

procedure TfrmEditCliente.pnlSalvarClick(Sender: TObject);
begin
  inherited;
  FViewModel.SalvarPessoa;
end;

procedure TfrmEditCliente.rgTipoPessoaClick(Sender: TObject);
begin
  dsPessoa.DataSet.FieldByName('CPFCNPJ').Clear;
end;

procedure TfrmEditCliente.bandaContatosCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if ACellViewInfo.Item.Caption = 'DELETE' then
    FViewModel.DeletarContato;
end;

procedure TfrmEditCliente.bandaContatosCustomDrawBandHeader(Sender: TcxGridBandedTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridBandHeaderViewInfo; var ADone: Boolean);
begin
  bandaContatos.OnCustomDrawBandHeader := nil;
  ADone := True;
  AViewInfo.Borders := [bBottom];
  AViewInfo.Paint(ACanvas);
  bandaContatos.OnCustomDrawBandHeader := bandaContatosCustomDrawBandHeader;
end;

procedure TfrmEditCliente.bandaContatosCustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  bandaContatos.OnCustomDrawColumnHeader := nil;
  ADone := True;
  AViewInfo.Borders := [bBottom];
  AViewInfo.Paint(ACanvas);
  bandaContatos.OnCustomDrawColumnHeader := bandaContatosCustomDrawColumnHeader;
end;

procedure TfrmEditCliente.bandaContatosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  AGridSite: TcxGridSite;
  AGridView: TcxGridTableView;
  AHitTest: TcxCustomGridHitTest;
begin
  AGridSite := Sender as TcxGridSite;
  AGridView := AGridSite.GridView as TcxGridTableView;
  AHitTest := AGridView.GetHitTest(X, Y);
  if (AHitTest is TcxGridRecordCellHitTest) and
   (((AHitTest as TcxGridRecordCellHitTest).Item.Caption = 'DELETE')) then
      AGridSite.Cursor := crHandPoint
  else
    AGridSite.Cursor := crDefault;
end;

procedure TfrmEditCliente.bandaEnderecosCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if ACellViewInfo.Item.Caption = 'DELETE' then
    FViewModel.DeletarEndereco;
end;

procedure TfrmEditCliente.bandaEnderecosCustomDrawBandHeader(Sender: TcxGridBandedTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridBandHeaderViewInfo; var ADone: Boolean);
begin
  bandaEnderecos.OnCustomDrawBandHeader := nil;
  ADone := True;
  AViewInfo.Borders := [bBottom];
  AViewInfo.Paint(ACanvas);
  bandaEnderecos.OnCustomDrawBandHeader := bandaEnderecosCustomDrawBandHeader;
end;

procedure TfrmEditCliente.bandaEnderecosCustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  bandaEnderecos.OnCustomDrawColumnHeader := nil;
  ADone := True;
  AViewInfo.Borders := [bBottom];
  AViewInfo.Paint(ACanvas);
  bandaEnderecos.OnCustomDrawColumnHeader := bandaEnderecosCustomDrawColumnHeader;
end;

procedure TfrmEditCliente.bandaEnderecosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  AGridSite: TcxGridSite;
  AGridView: TcxGridTableView;
  AHitTest: TcxCustomGridHitTest;
begin
  AGridSite := Sender as TcxGridSite;
  AGridView := AGridSite.GridView as TcxGridTableView;
  AHitTest := AGridView.GetHitTest(X, Y);
  if (AHitTest is TcxGridRecordCellHitTest) and
     (((AHitTest as TcxGridRecordCellHitTest).Item.Caption = 'DELETE')) then
      AGridSite.Cursor := crHandPoint
  else
    AGridSite.Cursor := crDefault;
end;

procedure TfrmEditCliente.cardMainCardChange(Sender: TObject; PrevCard, NextCard: TCard);
begin
  inherited;
  if Assigned(dsPessoa.DataSet) then pnlSalvarClick(Self);
end;

destructor TfrmEditCliente.Destroy;
begin
  inherited;
end;

procedure TfrmEditCliente.dsEnderecosStateChange(Sender: TObject);
begin
  FViewModel.Controls.StatusDataSource(dsEnderecos).BrushPanel(pnlCancelar).BrushPanel(pnlSalvar).StatusLabel(lblStatus);
  lblMensagem.Visible := not FViewModel.Controls.canClose;
end;

procedure TfrmEditCliente.dsContatosStateChange(Sender: TObject);
begin
  FViewModel.Controls.StatusDataSource(dsContatos).BrushPanel(pnlCancelar).BrushPanel(pnlSalvar).StatusLabel(lblStatus);
  lblMensagem.Visible := not FViewModel.Controls.canClose;
end;

procedure TfrmEditCliente.dsPessoaStateChange(Sender: TObject);
begin
  FViewModel.Controls.StatusDataSource(dsPessoa).BrushPanel(pnlCancelar).BrushPanel(pnlSalvar).StatusLabel(lblStatus);
  lblMensagem.Visible := not FViewModel.Controls.canClose;
end;

procedure TfrmEditCliente.edtCEPEnter(Sender: TObject);
begin
  edtCep.MaxLength := 8;
end;

procedure TfrmEditCliente.edtCEPExit(Sender: TObject);
begin
  edtCep.MaxLength := 9;
end;

procedure TfrmEditCliente.edtCpfCnpjEnter(Sender: TObject);
begin
  if rgTipoPessoa.Value = 'F�sica' then edtCPFCNPJ.MaxLength := 11 else edtCPFCNPJ.MaxLength := 14;
end;

procedure TfrmEditCliente.edtCpfCnpjExit(Sender: TObject);
begin
  if rgTipoPessoa.Value = 'F�sica' then edtCPFCNPJ.MaxLength := 14 else edtCPFCNPJ.MaxLength := 17;
end;

procedure TfrmEditCliente.edtCpfCnpjKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9',Chr(8)]) then Key:= #0;
end;

procedure TfrmEditCliente.edtFoneCelularEnter(Sender: TObject);
begin
  edtFoneComercial.MaxLength := 10;
end;

procedure TfrmEditCliente.edtFoneCelularExit(Sender: TObject);
begin
  edtFoneComercial.MaxLength := 14;
end;

procedure TfrmEditCliente.edtFoneComercialEnter(Sender: TObject);
begin
  edtFoneComercial.MaxLength := 10;
end;

procedure TfrmEditCliente.edtFoneComercialExit(Sender: TObject);
begin
  edtFoneComercial.MaxLength := 13;
end;

procedure TfrmEditCliente.FormShow(Sender: TObject);
begin
  inherited;
  cardMain.ActiveCard := cardBasico;
end;

procedure TfrmEditCliente.InsertEditCustomer(aValue: Integer);
begin
  FID := aValue;
  FViewModel := TViewModelPessoa.New;
  FViewModel
    .DataSet(dsPessoa)
    .DataSetContatos(dsContatos)
    .DataSetEnderecos(dsEnderecos)
    .Open(FID)
//  .EditarPessoa;
end;

procedure TfrmEditCliente.lblStatusClick(Sender: TObject);
begin

end;

{Colocar isso em ViewModel}
procedure TfrmEditCliente.HideShape(aValueMenu, aValueClicado : TPanel);
begin
  for var contadorMenu : integer := 0 to Pred(aValueMenu.ControlCount) do
  begin
    if aValueMenu.Controls[contadorMenu] is TPanel then
    begin
      TPanel(aValueMenu.Controls[contadorMenu]).Font.Size  := 8;
      TPanel(aValueMenu.Controls[contadorMenu]).Font.Style := [];
      TPanel(aValueMenu.Controls[contadorMenu]).Font.Color := clSilver;
    end;
  end;

  aValueClicado.Font.Size   := 12;
  aValueClicado.Font.Style  := [TFontStyle.fsBold, TFontStyle.fsUnderline];
  aValueClicado.Font.Color  := clGray;

end;

procedure TfrmEditCliente.imgFecharClick(Sender: TObject);
begin
  if FViewModel.Controls.canClose then inherited;
end;

end.
