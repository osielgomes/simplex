object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 602
  ClientWidth = 972
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grid1: TDBGrid
    Left = 32
    Top = 216
    Width = 289
    Height = 313
    DataSource = dsPessoas
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnAbrir: TButton
    Left = 504
    Top = 80
    Width = 75
    Height = 25
    Caption = 'btnAbrir'
    TabOrder = 1
  end
  object btnMonitor: TButton
    Left = 624
    Top = 80
    Width = 75
    Height = 25
    Caption = 'btnMonitor'
    TabOrder = 2
    OnClick = btnMonitorClick
  end
  object edtID: TLabeledEdit
    Left = 72
    Top = 32
    Width = 121
    Height = 21
    EditLabel.Width = 27
    EditLabel.Height = 13
    EditLabel.Caption = 'edtID'
    TabOrder = 3
  end
  object edtNome: TLabeledEdit
    Left = 72
    Top = 82
    Width = 121
    Height = 21
    EditLabel.Width = 27
    EditLabel.Height = 13
    EditLabel.Caption = 'edtID'
    TabOrder = 4
  end
  object btnInsert: TButton
    Left = 464
    Top = 160
    Width = 75
    Height = 25
    Caption = 'btnInsert'
    TabOrder = 5
    OnClick = btnInsertClick
  end
  object btnEdit: TButton
    Left = 600
    Top = 160
    Width = 75
    Height = 25
    Caption = 'btnEdit'
    TabOrder = 6
    OnClick = btnEditClick
  end
  object btnDelete: TButton
    Left = 720
    Top = 160
    Width = 75
    Height = 25
    Caption = 'btnDelete'
    TabOrder = 7
    OnClick = btnDeleteClick
  end
  object btnSave: TButton
    Left = 824
    Top = 160
    Width = 75
    Height = 25
    Caption = 'btnSave'
    TabOrder = 8
    OnClick = btnSaveClick
  end
  object edtApelido: TLabeledEdit
    Left = 72
    Top = 136
    Width = 121
    Height = 21
    EditLabel.Width = 51
    EditLabel.Height = 13
    EditLabel.Caption = 'edtApelido'
    TabOrder = 9
  end
  object gridEnderecos: TDBGrid
    Left = 344
    Top = 216
    Width = 217
    Height = 313
    DataSource = dsEnderecos
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object gridContatos: TDBGrid
    Left = 579
    Top = 216
    Width = 320
    Height = 313
    DataSource = dsContatos
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dsPessoas: TDataSource
    OnDataChange = dsPessoasDataChange
    Left = 112
    Top = 384
  end
  object dsEnderecos: TDataSource
    Left = 408
    Top = 392
  end
  object dsContatos: TDataSource
    Left = 736
    Top = 384
  end
end
