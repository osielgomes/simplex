inherited frmClientes: TfrmClientes
  Caption = 'frmClientes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMain: TPanel
    inherited pnlTopo: TPanel
      inherited lblTelaAtual: TLabel
        ExplicitLeft = 119
      end
      inherited lbl1: TLabel
        ExplicitLeft = 99
      end
      inherited pnlBotaoAdicionar: TPanel
        Caption = 'NOVO CLIENTE'
        OnClick = pnlBotaoAdicionarClick
      end
    end
    inherited pnlComponentes: TPanel
      inherited cardMain: TCardPanel
        inherited cardGrid: TCard
          inherited cxgrd1: TcxGrid
            inherited bandaPrincipal: TcxGridDBBandedTableView
              OnMouseMove = bandaPrincipalMouseMove
              OnCellClick = bandaPrincipalCellClick
              Styles.Selection = selection_ligth
              inherited colbandacxgrd1DBBandedTableView1Column1: TcxGridDBBandedColumn
                Caption = 'EDIT'
              end
              inherited colbandacxgrd1DBBandedTableView1Column2: TcxGridDBBandedColumn
                Caption = 'DELETE'
              end
              object colPrincipalColumn1: TcxGridDBBandedColumn
                DataBinding.FieldName = 'ID'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taLeftJustify
                Width = 78
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object colPrincipalColumn2: TcxGridDBBandedColumn
                Caption = 'Nome/Raz'#227'o'
                DataBinding.FieldName = 'NomeRazao'
                Width = 366
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object colPrincipalColumn3: TcxGridDBBandedColumn
                Caption = 'Apelido/Fantasia'
                DataBinding.FieldName = 'ApelidoFantasia'
                Width = 352
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
            end
          end
        end
      end
    end
  end
  inherited style: TcxStyleRepository
    PixelsPerInch = 96
    object selection_ligth: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = cl3DDkShadow
    end
  end
  inherited imgList: TcxImageList
    FormatVersion = 1
  end
end
