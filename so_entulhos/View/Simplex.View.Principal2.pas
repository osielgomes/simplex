unit Simplex.View.Principal2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.WinXPanels, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, cxLabel, cxGridCustomTableView,
  cxGridCardView, cxGridCustomView, cxGridCustomLayoutView, cxClasses, cxGridLevel, cxGrid;

type
  TfrmCadastros = class(TForm)
    pnlMain: TPanel;
    pnlDash: TPanel;
    pnlEsquerda: TPanel;
    CardPanelMenu: TCardPanel;
    CardWeather: TCard;
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    img1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    pnl4: TPanel;
    pnlClientes: TPanel;
    img2: TImage;
    lbl5: TLabel;
    lbl6: TLabel;
    pnl6: TPanel;
    img3: TImage;
    lbl7: TLabel;
    lbl8: TLabel;
    pnl7: TPanel;
    img4: TImage;
    lbl9: TLabel;
    lbl10: TLabel;
    pnl8: TPanel;
    img5: TImage;
    lbl11: TLabel;
    lbl12: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Image2: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    Image3: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Panel4: TPanel;
    Image4: TImage;
    Label7: TLabel;
    Label8: TLabel;
    Panel5: TPanel;
    Image5: TImage;
    Label9: TLabel;
    Label10: TLabel;
    Panel6: TPanel;
    Image6: TImage;
    Label11: TLabel;
    Label12: TLabel;
    Panel7: TPanel;
    Image7: TImage;
    Label13: TLabel;
    Label14: TLabel;
    Panel8: TPanel;
    Image8: TImage;
    Label15: TLabel;
    Label16: TLabel;
    Panel9: TPanel;
    Image9: TImage;
    Label17: TLabel;
    Label18: TLabel;
    Panel10: TPanel;
    Image10: TImage;
    Label19: TLabel;
    Label20: TLabel;
    Panel11: TPanel;
    Image11: TImage;
    Label21: TLabel;
    Label22: TLabel;
    Panel12: TPanel;
    Image12: TImage;
    Label23: TLabel;
    Label24: TLabel;
    lbl13: TLabel;
    img6: TImage;
    CardPanelForm: TCardPanel;
    CardDash: TCard;
    CardForm: TCard;
    pnlForm: TPanel;
    CardWindow: TCard;
    Panel13: TPanel;
    pnlMenuClientes: TPanel;
    img7: TImage;
    lbl14: TLabel;
    lblMenus: TLabel;
    pnlExecucao1: TPanel;
    lblClientesExecucao: TLabel;
    lblContatos: TLabel;
    lblEmailContato: TLabel;
    lblTelefoneContato: TLabel;
    procedure pnlClientesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    procedure DoClose(Sender: TObject; var Action: TCloseAction);
    procedure BackHome(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastros: TfrmCadastros;

implementation

uses
  Simplex.View.Clientes;

{$R *.dfm}

procedure TfrmCadastros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(frmClientes) then
    FreeAndNil(frmClientes);
end;

procedure TfrmCadastros.FormShow(Sender: TObject);
begin
  CardPanelForm.ActiveCard := CardDash;
  CardPanelMenu.ActiveCard := CardWeather;
end;

procedure TfrmCadastros.pnlClientesClick(Sender: TObject);
var
  frmClientes: TfrmClientes;
begin
    CardPanelForm.ActiveCard := CardForm;
    CardPanelMenu.ActiveCard := CardWindow;

    pnlMenuClientes.Visible     := True;
    lblClientesExecucao.Visible := True;

    frmClientes              := TfrmClientes.GetInstance;
    frmClientes.Parent       := pnlForm;
    frmClientes.OnHide       := BackHome;
    frmClientes.OnClose      := DoClose;
    frmClientes.Show;
end;

procedure TfrmCadastros.BackHome(Sender: TObject);
begin
  CardPanelForm.ActiveCard := CardDash;
  CardPanelMenu.ActiveCard := CardWeather;
  pnlMenuClientes.Visible  := True;
end;

procedure TfrmCadastros.DoClose(Sender: TObject; var Action: TCloseAction);
begin
  CardPanelForm.ActiveCard := CardDash;
  CardPanelMenu.ActiveCard := CardWeather;
  pnlMenuClientes.Visible  := True;
end;

end.
