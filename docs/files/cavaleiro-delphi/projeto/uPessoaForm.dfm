object frmSalvadorDePessoas: TfrmSalvadorDePessoas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Salvador de Pessoas'
  ClientHeight = 162
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 16
    Top = 64
    Width = 81
    Height = 13
    Caption = 'Data Nascimento'
  end
  object Label4: TLabel
    Left = 143
    Top = 64
    Width = 55
    Height = 13
    Caption = 'Estado Civil'
  end
  object Nome: TEdit
    Left = 16
    Top = 27
    Width = 385
    Height = 21
    TabOrder = 0
  end
  object EstadoCivil: TComboBox
    Left = 143
    Top = 83
    Width = 145
    Height = 21
    TabOrder = 1
    Text = 'EstadoCivil'
  end
  object Salvar: TButton
    Left = 16
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = SalvarClick
  end
  object DataNascimento: TDateTimePicker
    Left = 16
    Top = 83
    Width = 121
    Height = 21
    Date = 43770.000000000000000000
    Time = 0.620124733795819300
    TabOrder = 3
  end
  object DataSource1: TDataSource
    Left = 192
    Top = 80
  end
end
