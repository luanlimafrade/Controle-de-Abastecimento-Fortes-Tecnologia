object frmRelatorio: TfrmRelatorio
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Controle de Abastecimentos'
  ClientHeight = 299
  ClientWidth = 392
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 64
    Top = 70
    Width = 57
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label1: TLabel
    Left = 224
    Top = 69
    Width = 52
    Height = 13
    Caption = 'Data Final:'
  end
  object edtDataIni: TDateTimePicker
    Left = 64
    Top = 89
    Width = 105
    Height = 25
    Date = 44572.000000000000000000
    Time = 0.917540960646874700
    TabOrder = 0
  end
  object edtDataFim: TDateTimePicker
    Left = 224
    Top = 89
    Width = 105
    Height = 25
    Date = 44572.000000000000000000
    Time = 0.917540960646874700
    TabOrder = 1
  end
  object pnlConfirmar: TPanel
    Left = 0
    Top = 246
    Width = 392
    Height = 53
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 2
    object btnConfirmarDados: TButton
      Left = 95
      Top = 3
      Width = 86
      Height = 49
      Caption = 'Visualizar'
      TabOrder = 0
      OnClick = btnConfirmarDadosClick
    end
    object btnCancelar: TButton
      Left = 216
      Top = 3
      Width = 85
      Height = 49
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
  object ds_abastecimento: TDataSource
    Left = 284
    Top = 151
  end
end
