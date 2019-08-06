inherited frmEditCliente: TfrmEditCliente
  Caption = 'frmEditCliente'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBorda: TPanel
    inherited pnlMain: TPanel
      inherited pnlEditMain: TPanel
        object lblNomeRazao: TLabel
          Left = 12
          Top = 45
          Width = 65
          Height = 13
          Caption = 'Nome/Raz'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Font.Quality = fqClearType
          ParentFont = False
        end
        object lblApelidoFantasia: TLabel
          Left = 488
          Top = 45
          Width = 87
          Height = 13
          Caption = 'Apelido/Fantasia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          Font.Quality = fqClearType
          ParentFont = False
        end
        object pnlEditCard: TPanel
          Left = 0
          Top = 104
          Width = 878
          Height = 518
          BevelOuter = bvNone
          Caption = 'pnlEditCard'
          ShowCaption = False
          TabOrder = 2
          object pnlMenu: TPanel
            Left = 0
            Top = 0
            Width = 878
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            Padding.Left = 15
            Padding.Top = 5
            Padding.Right = 15
            ParentBackground = False
            ShowCaption = False
            TabOrder = 0
            object pnlBasico: TPanel
              Left = 15
              Top = 5
              Width = 100
              Height = 36
              Cursor = crHandPoint
              Align = alLeft
              BevelOuter = bvNone
              Caption = 'B'#225'sico'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold, fsUnderline]
              Font.Quality = fqClearType
              ParentFont = False
              TabOrder = 0
              OnClick = pnlBasicoClick
            end
            object pnlContatos: TPanel
              Left = 215
              Top = 5
              Width = 100
              Height = 36
              Cursor = crHandPoint
              Align = alLeft
              BevelOuter = bvNone
              Caption = 'Contatos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Font.Quality = fqClearType
              ParentFont = False
              TabOrder = 2
              OnClick = pnlContatosClick
            end
            object pnlEnderecos: TPanel
              Left = 115
              Top = 5
              Width = 100
              Height = 36
              Cursor = crHandPoint
              Align = alLeft
              BevelOuter = bvNone
              Caption = 'Endere'#231'os'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Font.Quality = fqClearType
              ParentFont = False
              TabOrder = 1
              OnClick = pnlEnderecosClick
            end
          end
          object cardMain: TCardPanel
            Left = 0
            Top = 41
            Width = 878
            Height = 477
            Align = alClient
            ActiveCard = cardContatos
            BevelOuter = bvNone
            Caption = 'cardMain'
            TabOrder = 1
            OnCardChange = cardMainCardChange
            object cardBasico: TCard
              Left = 0
              Top = 0
              Width = 878
              Height = 477
              Caption = 'cardBasico'
              CardIndex = 0
              TabOrder = 2
              object pnlEditBasico: TPanel
                Left = 0
                Top = 0
                Width = 878
                Height = 477
                Align = alClient
                BevelOuter = bvNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = cl3DDkShadow
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
                ShowCaption = False
                TabOrder = 0
                object lblCPFCNPJ: TLabel
                  Left = 12
                  Top = 140
                  Width = 47
                  Height = 13
                  Caption = 'CPF/CNPJ'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                end
                object lblRGIE: TLabel
                  Left = 12
                  Top = 202
                  Width = 28
                  Height = 13
                  Caption = 'RG/IE'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                end
                object lblDicaCpf: TLabel
                  Left = 60
                  Top = 137
                  Width = 77
                  Height = 12
                  Caption = '*Somente n'#250'meros'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -9
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                end
                object edtRgIe: TDBEdit
                  Left = 12
                  Top = 221
                  Width = 856
                  Height = 25
                  BevelEdges = [beBottom]
                  BevelInner = bvNone
                  BevelOuter = bvRaised
                  BevelKind = bkFlat
                  BorderStyle = bsNone
                  DataField = 'RGIE'
                  DataSource = dsPessoa
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  TabOrder = 2
                end
                object rgTipoPessoa: TDBRadioGroup
                  Left = 12
                  Top = 40
                  Width = 856
                  Height = 73
                  Caption = 'Pessoa f'#237'sica/Pessoa jur'#237'dica'
                  Columns = 2
                  DataField = 'FISICAJURIDICA'
                  DataSource = dsPessoa
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  Items.Strings = (
                    'Pessoa f'#237'sica'
                    'Pessoa jur'#237'dica')
                  ParentFont = False
                  TabOrder = 0
                  Values.Strings = (
                    'F'#237'sica'
                    'Jur'#237'dica')
                  OnClick = rgTipoPessoaClick
                end
                object edtCpfCnpj: TDBEdit
                  Left = 12
                  Top = 159
                  Width = 856
                  Height = 25
                  BevelEdges = [beBottom]
                  BevelInner = bvNone
                  BevelOuter = bvRaised
                  BevelKind = bkFlat
                  BorderStyle = bsNone
                  DataField = 'CPFCNPJ'
                  DataSource = dsPessoa
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  TabOrder = 1
                  OnEnter = edtCpfCnpjEnter
                  OnExit = edtCpfCnpjExit
                  OnKeyPress = edtCpfCnpjKeyPress
                end
              end
            end
            object cardEnderecos: TCard
              Left = 0
              Top = 0
              Width = 878
              Height = 477
              Caption = 'cardEnderecos'
              CardIndex = 1
              TabOrder = 1
              DesignSize = (
                878
                477)
              object pnlEditEnderecos: TPanel
                Left = 0
                Top = 0
                Width = 878
                Height = 477
                Align = alClient
                BevelOuter = bvNone
                ShowCaption = False
                TabOrder = 0
                object lblLogradouro: TLabel
                  Left = 100
                  Top = 67
                  Width = 61
                  Height = 13
                  Caption = 'Logradouro'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                end
                object lblNumero: TLabel
                  Left = 517
                  Top = 67
                  Width = 41
                  Height = 13
                  Caption = 'N'#250'mero'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                end
                object lblBairro: TLabel
                  Left = 12
                  Top = 120
                  Width = 31
                  Height = 13
                  Caption = 'Bairro'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                end
                object lblCidade: TLabel
                  Left = 360
                  Top = 120
                  Width = 36
                  Height = 13
                  Caption = 'Cidade'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                end
                object lblUF: TLabel
                  Left = 793
                  Top = 120
                  Width = 14
                  Height = 13
                  Caption = 'UF'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                end
                object lblCEP: TLabel
                  Left = 12
                  Top = 67
                  Width = 19
                  Height = 13
                  Caption = 'CEP'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                end
                object lblComplemento: TLabel
                  Left = 584
                  Top = 67
                  Width = 72
                  Height = 13
                  Caption = 'Complemento'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                end
                object lblObs: TLabel
                  Left = 12
                  Top = 171
                  Width = 65
                  Height = 13
                  Caption = 'Observa'#231#245'es'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                end
                object pnlNovoEndereco: TPanel
                  Left = 736
                  Top = 6
                  Width = 132
                  Height = 39
                  Cursor = crHandPoint
                  Alignment = taRightJustify
                  BevelOuter = bvNone
                  Caption = 'Novo endere'#231'o'
                  Color = clWhite
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  Font.Quality = fqClearType
                  ParentBackground = False
                  ParentFont = False
                  TabOrder = 0
                  OnClick = pnlNovoEnderecoClick
                  object imgNovoEndereco: TImage
                    Left = 0
                    Top = 0
                    Width = 34
                    Height = 39
                    Cursor = crHandPoint
                    Align = alLeft
                    Center = True
                    Picture.Data = {
                      0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                      000000200806000000737A7AF4000000097048597300000EC400000EC401952B
                      0E1B000001F1494441545885CD97B14A034110863F8F2B4452DC435C71A4B2B0
                      129BB3921469ACB54A6B2B585A596893274811C4CAC64611318D580949A788E0
                      03886095147A6871B338B7B9337BD1E4FC61616F67F69FD9D9DBD9597047006C
                      031DA00FEC2BD9BE8C75442728C13B1111D00546C0A76A874AE7D0928D644EF4
                      1BC335A00DBC5BE42E0E98F62E1CB5B2C623E0DE224B8073A025725FE9FB32D6
                      129DC49A7B4F8968AC00AF16C13110965840287334C7AB70FF88C832FE026C94
                      306C634338B4138591A8910DFB33E5565D8450B8F476E4FE136DB22BFF0BE3DA
                      091D89B6AD1091FDDB1B8EC475692E68903D1D99ADE82AE18923E13AE9DF9E48
                      DF0527CA4ED70C067C279904F7D0EF2AB25DC73921DF477404041ED0041645E1
                      127872249B064F6203B1D9F48058299CCED0789E8DD80396D5C0CD1C1CB855FD
                      651F3803AE64A028FCEB8C67B1B8A06F70075CE78C3F0247D21FFEE8AAA0CE78
                      6E7769090E47D473F1609658202D2696E47B0FF8C8D12BDA02734F5C003D4B5E
                      B4053E7020FD21A4958C095B9902629A3C00E9B698797D0F1828E15A09A269B1
                      AAFA038F6CE836E7E080B6D1838A53B111547A19C13FB88EA1E28204E65B922D
                      1529575A941A545A961B54FA3031F8CBA759E19EBB60A68F537F9202F0006C01
                      3BA4F5634C5A45E96262487AA70C48D3EB19F0E6C0CD1738D2FEEFB21AD08500
                      00000049454E44AE426082}
                    ExplicitHeight = 40
                  end
                end
                object edtCEP: TDBEdit
                  Left = 12
                  Top = 83
                  Width = 82
                  Height = 25
                  BevelEdges = [beBottom]
                  BevelInner = bvNone
                  BevelOuter = bvRaised
                  BevelKind = bkFlat
                  BorderStyle = bsNone
                  DataField = 'CEP'
                  DataSource = dsEnderecos
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  TabOrder = 1
                  OnEnter = edtCEPEnter
                  OnExit = edtCEPExit
                  OnKeyPress = edtCpfCnpjKeyPress
                end
                object edtLogradouro: TDBEdit
                  Left = 100
                  Top = 83
                  Width = 411
                  Height = 25
                  BevelEdges = [beBottom]
                  BevelInner = bvNone
                  BevelOuter = bvRaised
                  BevelKind = bkFlat
                  BorderStyle = bsNone
                  DataField = 'LOGRADOURO'
                  DataSource = dsEnderecos
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  TabOrder = 2
                end
                object edtNumero: TDBEdit
                  Left = 517
                  Top = 83
                  Width = 61
                  Height = 25
                  BevelEdges = [beBottom]
                  BevelInner = bvNone
                  BevelOuter = bvRaised
                  BevelKind = bkFlat
                  BorderStyle = bsNone
                  DataField = 'NUMERO'
                  DataSource = dsEnderecos
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  TabOrder = 3
                end
                object edtComplemento: TDBEdit
                  Left = 584
                  Top = 83
                  Width = 284
                  Height = 25
                  BevelEdges = [beBottom]
                  BevelInner = bvNone
                  BevelOuter = bvRaised
                  BevelKind = bkFlat
                  BorderStyle = bsNone
                  DataField = 'COMPLEMENTO'
                  DataSource = dsEnderecos
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  TabOrder = 4
                end
                object edtBairro: TDBEdit
                  Left = 12
                  Top = 136
                  Width = 342
                  Height = 25
                  BevelEdges = [beBottom]
                  BevelInner = bvNone
                  BevelOuter = bvRaised
                  BevelKind = bkFlat
                  BorderStyle = bsNone
                  DataField = 'BAIRRO'
                  DataSource = dsEnderecos
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  TabOrder = 5
                end
                object edtCidade: TDBEdit
                  Left = 360
                  Top = 136
                  Width = 427
                  Height = 25
                  BevelEdges = [beBottom]
                  BevelInner = bvNone
                  BevelOuter = bvRaised
                  BevelKind = bkFlat
                  BorderStyle = bsNone
                  DataField = 'CIDADE'
                  DataSource = dsEnderecos
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  TabOrder = 6
                end
                object memoObs: TDBMemo
                  Left = 12
                  Top = 188
                  Width = 856
                  Height = 45
                  DataField = 'OBSERVACAO'
                  DataSource = dsEnderecos
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = cl3DDkShadow
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Font.Quality = fqClearType
                  ParentFont = False
                  TabOrder = 8
                end
                object cbbUF: TDBComboBox
                  Left = 793
                  Top = 136
                  Width = 75
                  Height = 25
                  AutoDropDown = True
                  BevelInner = bvNone
                  BevelKind = bkFlat
                  CharCase = ecUpperCase
                  DataField = 'UF'
                  DataSource = dsEnderecos
                  DropDownCount = 27
                  Items.Strings = (
                    'AC'
                    'AL'
                    'AP'
                    'AM'
                    'BA'
                    'CE'
                    'ES'
                    'GO'
                    'MA'
                    'MT'
                    'MS'
                    'MG'
                    'PA'
                    'PB'
                    'PR'
                    'PE'
                    'PI'
                    'RJ'
                    'RN'
                    'RS'
                    'RO'
                    'RR'
                    'SC'
                    'SP'
                    'SE'
                    'TO'
                    'DF')
                  TabOrder = 7
                end
              end
              object cxGrid2: TcxGrid
                AlignWithMargins = True
                Left = 12
                Top = 248
                Width = 856
                Height = 222
                Margins.Left = 5
                Margins.Top = 0
                Margins.Right = 5
                Margins.Bottom = 10
                Anchors = [akLeft, akTop, akRight, akBottom]
                BevelEdges = []
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = cxcbsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
                TabOrder = 1
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.ScrollbarMode = sbmDefault
                object bandaEnderecos: TcxGridDBBandedTableView
                  OnMouseMove = bandaEnderecosMouseMove
                  Navigator.Buttons.CustomButtons = <>
                  OnCellClick = bandaEnderecosCellClick
                  DataController.DataSource = dsEnderecos
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsBehavior.FocusCellOnTab = True
                  OptionsBehavior.FocusFirstCellOnNewRecord = True
                  OptionsBehavior.ColumnHeaderHints = False
                  OptionsBehavior.FocusCellOnCycle = True
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsSelection.CellSelect = False
                  OptionsView.CellAutoHeight = True
                  OptionsView.CellTextMaxLineCount = 2
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.DataRowHeight = 35
                  OptionsView.GridLines = glNone
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderHeight = 30
                  OptionsView.RowSeparatorWidth = 1
                  Styles.Content = corcontent
                  Styles.ContentEven = corEven
                  Styles.ContentOdd = corOdd
                  Styles.GroupByBox = corGroupbyBox
                  Styles.Header = corheader
                  Styles.Inactive = corinactive
                  Styles.Selection = corselection
                  Styles.BandHeader = corBandHeader
                  OnCustomDrawColumnHeader = bandaEnderecosCustomDrawColumnHeader
                  Bands = <
                    item
                      Caption = 'Informa'#231#245'es gerais de endere'#231'o'
                      Width = 918
                    end
                    item
                      Caption = 'A'#231#245'es'
                      Options.Moving = False
                      Options.Sizing = False
                    end>
                  OnCustomDrawBandHeader = bandaEnderecosCustomDrawBandHeader
                  object colunaDelete: TcxGridDBBandedColumn
                    Caption = 'DELETE'
                    PropertiesClassName = 'TcxImageComboBoxProperties'
                    Properties.DefaultImageIndex = 1
                    Properties.Images = imgList
                    Properties.Items = <
                      item
                        ImageIndex = 1
                        Value = True
                      end>
                    Options.ShowEditButtons = isebNever
                    Options.Grouping = False
                    Options.ShowCaption = False
                    Options.Sorting = False
                    Width = 45
                    Position.BandIndex = 1
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn2: TcxGridDBBandedColumn
                    Caption = 'Logradouro'
                    DataBinding.FieldName = 'LOGRADOURO'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.Alignment.Horz = taLeftJustify
                    Width = 270
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn3: TcxGridDBBandedColumn
                    Caption = 'N'#250'mero'
                    DataBinding.FieldName = 'NUMERO'
                    Width = 60
                    Position.BandIndex = 0
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn4: TcxGridDBBandedColumn
                    Caption = 'Complemento'
                    DataBinding.FieldName = 'COMPLEMENTO'
                    Width = 120
                    Position.BandIndex = 0
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn5: TcxGridDBBandedColumn
                    Caption = 'Bairro'
                    DataBinding.FieldName = 'BAIRRO'
                    Width = 200
                    Position.BandIndex = 0
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedColumn6: TcxGridDBBandedColumn
                    Caption = 'Cidade'
                    DataBinding.FieldName = 'CIDADE'
                    Width = 200
                    Position.BandIndex = 0
                    Position.ColIndex = 4
                    Position.RowIndex = 0
                  end
                end
                object cxGridLevel1: TcxGridLevel
                  GridView = bandaEnderecos
                end
              end
            end
            object cardContatos: TCard
              Left = 0
              Top = 0
              Width = 878
              Height = 477
              Caption = 'cardContatos'
              CardIndex = 2
              TabOrder = 0
              DesignSize = (
                878
                477)
              object lblContato: TLabel
                Left = 12
                Top = 67
                Width = 42
                Height = 13
                Caption = 'Contato'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = cl3DDkShadow
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
              end
              object lblEmail: TLabel
                Left = 399
                Top = 67
                Width = 27
                Height = 13
                Caption = 'Email'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = cl3DDkShadow
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
              end
              object lblFoneComercial: TLabel
                Left = 12
                Top = 123
                Width = 77
                Height = 13
                Caption = 'Fone comercial'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = cl3DDkShadow
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
              end
              object lblFoneResidencial: TLabel
                Left = 142
                Top = 123
                Width = 84
                Height = 13
                Caption = 'Fone residencial'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = cl3DDkShadow
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
              end
              object lblCelular: TLabel
                Left = 272
                Top = 123
                Width = 63
                Height = 13
                Caption = 'Fone celular'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = cl3DDkShadow
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
              end
              object lblContatoObservacao: TLabel
                Left = 399
                Top = 123
                Width = 60
                Height = 13
                Caption = 'Observa'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = cl3DDkShadow
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
              end
              object pnlNovoContato: TPanel
                Left = 736
                Top = 6
                Width = 132
                Height = 39
                Cursor = crHandPoint
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = 'Novo contato'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                Font.Quality = fqClearType
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
                OnClick = pnlNovoContatoClick
                object imgNovoContato: TImage
                  Left = 0
                  Top = 0
                  Width = 34
                  Height = 39
                  Cursor = crHandPoint
                  Align = alLeft
                  Center = True
                  Picture.Data = {
                    0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
                    000000200806000000737A7AF4000000097048597300000EC400000EC401952B
                    0E1B000001F1494441545885CD97B14A034110863F8F2B4452DC435C71A4B2B0
                    129BB3921469ACB54A6B2B585A596893274811C4CAC64611318D580949A788E0
                    03886095147A6871B338B7B9337BD1E4FC61616F67F69FD9D9DBD9597047006C
                    031DA00FEC2BD9BE8C75442728C13B1111D00546C0A76A874AE7D0928D644EF4
                    1BC335A00DBC5BE42E0E98F62E1CB5B2C623E0DE224B8073A025725FE9FB32D6
                    129DC49A7B4F8968AC00AF16C13110965840287334C7AB70FF88C832FE026C94
                    306C634338B4138591A8910DFB33E5565D8450B8F476E4FE136DB22BFF0BE3DA
                    091D89B6AD1091FDDB1B8EC475692E68903D1D99ADE82AE18923E13AE9DF9E48
                    DF0527CA4ED70C067C279904F7D0EF2AB25DC73921DF477404041ED0041645E1
                    127872249B064F6203B1D9F48058299CCED0789E8DD80396D5C0CD1C1CB855FD
                    651F3803AE64A028FCEB8C67B1B8A06F70075CE78C3F0247D21FFEE8AAA0CE78
                    6E7769090E47D473F1609658202D2696E47B0FF8C8D12BDA02734F5C003D4B5E
                    B4053E7020FD21A4958C095B9902629A3C00E9B698797D0F1828E15A09A269B1
                    AAFA038F6CE836E7E080B6D1838A53B111547A19C13FB88EA1E28204E65B922D
                    1529575A941A545A961B54FA3031F8CBA759E19EBB60A68F537F9202F0006C01
                    3BA4F5634C5A45E96262487AA70C48D3EB19F0E6C0CD1738D2FEEFB21AD08500
                    00000049454E44AE426082}
                  ExplicitHeight = 40
                end
              end
              object edtContato: TDBEdit
                Left = 12
                Top = 83
                Width = 381
                Height = 25
                BevelEdges = [beBottom]
                BevelInner = bvNone
                BevelOuter = bvRaised
                BevelKind = bkFlat
                BorderStyle = bsNone
                DataField = 'CONTATO'
                DataSource = dsContatos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = cl3DDkShadow
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
                TabOrder = 1
              end
              object edtEmail: TDBEdit
                Left = 399
                Top = 83
                Width = 469
                Height = 25
                BevelEdges = [beBottom]
                BevelInner = bvNone
                BevelOuter = bvRaised
                BevelKind = bkFlat
                BorderStyle = bsNone
                CharCase = ecLowerCase
                DataField = 'EMAIL'
                DataSource = dsContatos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = cl3DDkShadow
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
                TabOrder = 2
              end
              object edtFoneComercial: TDBEdit
                Left = 12
                Top = 139
                Width = 124
                Height = 25
                BevelEdges = [beBottom]
                BevelInner = bvNone
                BevelOuter = bvRaised
                BevelKind = bkFlat
                BorderStyle = bsNone
                DataField = 'FONECOMERCIAL'
                DataSource = dsContatos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = cl3DDkShadow
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
                TabOrder = 3
                OnEnter = edtFoneComercialEnter
                OnExit = edtFoneComercialExit
                OnKeyPress = edtCpfCnpjKeyPress
              end
              object edtResidencial: TDBEdit
                Left = 142
                Top = 139
                Width = 124
                Height = 25
                BevelEdges = [beBottom]
                BevelInner = bvNone
                BevelOuter = bvRaised
                BevelKind = bkFlat
                BorderStyle = bsNone
                DataField = 'FONERESIDENCIAL'
                DataSource = dsContatos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = cl3DDkShadow
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
                TabOrder = 4
                OnEnter = edtFoneComercialEnter
                OnExit = edtFoneComercialExit
                OnKeyPress = edtCpfCnpjKeyPress
              end
              object edtFoneCelular: TDBEdit
                Left = 272
                Top = 139
                Width = 122
                Height = 25
                BevelEdges = [beBottom]
                BevelInner = bvNone
                BevelOuter = bvRaised
                BevelKind = bkFlat
                BorderStyle = bsNone
                DataField = 'FONECELULAR'
                DataSource = dsContatos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = cl3DDkShadow
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
                TabOrder = 5
                OnEnter = edtFoneCelularEnter
                OnExit = edtFoneCelularExit
                OnKeyPress = edtCpfCnpjKeyPress
              end
              object edtContatoObservacao: TDBEdit
                Left = 400
                Top = 139
                Width = 468
                Height = 25
                BevelEdges = [beBottom]
                BevelInner = bvNone
                BevelOuter = bvRaised
                BevelKind = bkFlat
                BorderStyle = bsNone
                DataField = 'OBSERVACAO'
                DataSource = dsContatos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = cl3DDkShadow
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
                TabOrder = 6
              end
              object cxGridcxgrd11: TcxGrid
                AlignWithMargins = True
                Left = 12
                Top = 200
                Width = 856
                Height = 277
                Margins.Left = 5
                Margins.Top = 0
                Margins.Right = 5
                Margins.Bottom = 10
                Anchors = [akLeft, akTop, akRight, akBottom]
                BevelEdges = []
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = cxcbsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Font.Quality = fqClearType
                ParentFont = False
                TabOrder = 7
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
                LookAndFeel.ScrollbarMode = sbmDefault
                object bandaContatos: TcxGridDBBandedTableView
                  OnMouseMove = bandaContatosMouseMove
                  Navigator.Buttons.CustomButtons = <>
                  OnCellClick = bandaContatosCellClick
                  DataController.DataSource = dsContatos
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsSelection.CellSelect = False
                  OptionsView.CellAutoHeight = True
                  OptionsView.CellTextMaxLineCount = 2
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.DataRowHeight = 35
                  OptionsView.GridLines = glNone
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderHeight = 30
                  Styles.Content = corcontent
                  Styles.ContentEven = corEven
                  Styles.ContentOdd = corOdd
                  Styles.GroupByBox = corGroupbyBox
                  Styles.Header = corheader
                  Styles.Inactive = corinactive
                  Styles.Selection = corselection
                  Styles.BandHeader = corBandHeader
                  OnCustomDrawColumnHeader = bandaContatosCustomDrawColumnHeader
                  Bands = <
                    item
                      Caption = 'Informa'#231#245'es gerais do contato'
                      Width = 918
                    end
                    item
                      Caption = 'A'#231#245'es'
                      Options.Moving = False
                      Options.Sizing = False
                    end>
                  OnCustomDrawBandHeader = bandaContatosCustomDrawBandHeader
                  object colbandacxgrd1DBBandedTableView1Column2: TcxGridDBBandedColumn
                    Caption = 'DELETE'
                    PropertiesClassName = 'TcxImageComboBoxProperties'
                    Properties.DefaultImageIndex = 1
                    Properties.Images = imgList
                    Properties.Items = <
                      item
                        ImageIndex = 1
                      end>
                    Options.Editing = False
                    Options.Filtering = False
                    Options.FilteringWithFindPanel = False
                    Options.Focusing = False
                    Options.ShowEditButtons = isebNever
                    Options.Grouping = False
                    Options.ShowCaption = False
                    Options.Sorting = False
                    Width = 45
                    Position.BandIndex = 1
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object colPrincipalColumn1: TcxGridDBBandedColumn
                    Caption = 'Contato'
                    DataBinding.FieldName = 'CONTATO'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.Alignment.Horz = taLeftJustify
                    Width = 200
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object colPrincipalColumn2: TcxGridDBBandedColumn
                    Caption = 'Email'
                    DataBinding.FieldName = 'EMAIL'
                    Width = 375
                    Position.BandIndex = 0
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object colPrincipalColumn3: TcxGridDBBandedColumn
                    Caption = 'Fone comercial'
                    DataBinding.FieldName = 'FONECOMERCIAL'
                    Width = 114
                    Position.BandIndex = 0
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                  end
                  object colContatosColumn6: TcxGridDBBandedColumn
                    Caption = 'Fone residencial'
                    DataBinding.FieldName = 'FONERESIDENCIAL'
                    Width = 110
                    Position.BandIndex = 0
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                  end
                  object colContatosColumn7: TcxGridDBBandedColumn
                    Caption = 'Fone celular'
                    DataBinding.FieldName = 'FONECELULAR'
                    Width = 113
                    Position.BandIndex = 0
                    Position.ColIndex = 4
                    Position.RowIndex = 0
                  end
                end
                object gridlvl1: TcxGridLevel
                  GridView = bandaContatos
                end
              end
            end
          end
        end
        object edtNomeRazao: TDBEdit
          Left = 12
          Top = 61
          Width = 470
          Height = 25
          BevelEdges = [beBottom]
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'NOMERAZAO'
          DataSource = dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          Font.Quality = fqClearType
          ParentFont = False
          TabOrder = 0
        end
        object edtApelidoFantasia: TDBEdit
          Left = 488
          Top = 61
          Width = 380
          Height = 25
          BevelEdges = [beBottom]
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'APELIDOFANTASIA'
          DataSource = dsPessoa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          Font.Quality = fqClearType
          ParentFont = False
          TabOrder = 1
        end
      end
      inherited pnlBotoes: TPanel
        Color = 10907415
        inherited lblMensagem: TLabel
          Height = 44
        end
        inherited pnlSalvar: TPanel
          Left = 656
          Width = 200
          Color = 10907415
          OnClick = pnlSalvarClick
          ExplicitLeft = 656
          ExplicitWidth = 200
        end
        inherited pnlCancelar: TPanel
          Left = 456
          Width = 200
          Color = 10907415
          ParentBackground = False
          OnClick = pnlCancelarClick
          ExplicitLeft = 456
          ExplicitWidth = 200
        end
      end
      inherited pnlStatus: TPanel
        Color = 10907415
        inherited lblStatus: TLabel
          Height = 22
          OnClick = lblStatusClick
        end
      end
    end
  end
  object dsPessoa: TDataSource
    OnStateChange = dsPessoaStateChange
    Left = 644
    Top = 220
  end
  object CoresGridstyle: TcxStyleRepository
    Left = 627
    Top = 57
    PixelsPerInch = 96
    object corBox: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3288877
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -9
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clGray
    end
    object corOdd: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15131101
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object corcontent: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object corEven: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object corselection: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = cl3DDkShadow
    end
    object corheader: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3288877
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      TextColor = clWhite
    end
    object corinactive: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object corGroupbyBox: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clGray
    end
    object corBandHeader: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 3288877
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
  end
  object dsContatos: TDataSource
    OnStateChange = dsContatosStateChange
    Left = 565
    Top = 118
  end
  object dsEnderecos: TDataSource
    OnStateChange = dsEnderecosStateChange
    Left = 309
    Top = 446
  end
  object imgList: TcxImageList
    SourceDPI = 96
    DrawingStyle = dsTransparent
    FormatVersion = 1
    DesignInfo = 1245887
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC400000EC401952B0E1B0000011149444154388D
          95D2214B835114C6F1DF64490C069358C462322C8B45D06A168E1F4030C85C52
          1011318A0862B09D2F601231EA973098C4340C0B069121866D325FB7BDF3C085
          739F7B9EFF3DF7722AC6888838C536EED0C8CC97DE59650CF3321EFBA4572C64
          E6274C949827B084569F3C87E9DE6624009BD8C721AEF1859BCC6CF60AAA236E
          9FC42966718E07ECE0BEBF6E54077BDD767BB1A2F3F6E7524044CCA25190DF70
          5CAC1DD6C109A60ADA5166B68A857F001151C356417EC2D5A09B7E012202CE06
          80EB99D92E05600DB582769F99B783CC8300AB98C725DADD551F66FE131171D0
          976F44C44599E76790BA83D3ECE63358C7EED800CCA01A118B089D8FFBF80FE0
          5DE7BD9FD8CFCC322FF80648F54597BEB6EB650000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC400000EC401952B0E1B0000008749444154388D
          6364C0026263631318181842D184372F5EBC7806BA5A46244D560C0C0C16D80C
          C4024E2C5EBCF818030303030B92A00B030343239106D43330306018D0C5C0C0
          B0878181418080E64F0C0C0C67601C466499D8D8D89D0C0C0C6E040C38B678F1
          626B188789B06BF1835103460DA08A012C68FCCD0C901CC98643FD3FA81A3800
          007C5616E429D4EA740000000049454E44AE426082}
      end>
  end
end
