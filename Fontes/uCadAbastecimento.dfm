object frmAbastecimento: TfrmAbastecimento
  Left = 0
  Top = 0
  Caption = 'Lan'#231'amento de Abastecimento'
  ClientHeight = 398
  ClientWidth = 555
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 17
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 555
    Height = 398
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 40
      Top = 24
      Width = 30
      Height = 17
      Caption = 'Data:'
    end
    object Label3: TLabel
      Left = 209
      Top = 134
      Width = 71
      Height = 17
      Caption = 'Quantidade:'
    end
    object Label4: TLabel
      Left = 40
      Top = 133
      Width = 33
      Height = 17
      Caption = 'Valor:'
    end
    object Label5: TLabel
      Left = 40
      Top = 194
      Width = 330
      Height = 17
      Caption = 'Valor do Abastecimento com Incid'#234'ncia de Impostos (13%):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object edtData: TDateTimePicker
      Left = 40
      Top = 44
      Width = 105
      Height = 25
      Date = 44572.000000000000000000
      Time = 0.917540960646874700
      TabOrder = 0
    end
    object rgTanque: TRadioGroup
      Left = 40
      Top = 75
      Width = 219
      Height = 39
      Caption = 'Tanque'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Gasolina'
        #211'leo Diesel')
      TabOrder = 3
      TabStop = True
    end
    object rgBomba: TRadioGroup
      Left = 304
      Top = 75
      Width = 219
      Height = 39
      Caption = 'Bomba de Combust'#237'vel'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Bomba 1'
        'Bomba 2')
      TabOrder = 4
      TabStop = True
    end
    object edtQtde: TEdit
      Left = 209
      Top = 153
      Width = 104
      Height = 25
      TabOrder = 2
      OnExit = edtQtdeExit
      OnKeyPress = edtQtdeKeyPress
    end
    object edtValorImp: TEdit
      Left = 40
      Top = 217
      Width = 121
      Height = 25
      Enabled = False
      TabOrder = 5
    end
    object pnlConfirmar: TPanel
      Left = 1
      Top = 344
      Width = 553
      Height = 53
      Align = alBottom
      BevelOuter = bvNone
      Color = clSilver
      ParentBackground = False
      TabOrder = 6
      object btnConfirmarDados: TButton
        Left = 183
        Top = 3
        Width = 86
        Height = 49
        Caption = 'Confirmar'
        TabOrder = 0
        OnClick = btnConfirmarDadosClick
      end
      object btnCancelar: TButton
        Left = 296
        Top = 3
        Width = 85
        Height = 49
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = btnCancelarClick
      end
    end
    object edtValor: TMaskEdit
      Left = 40
      Top = 153
      Width = 121
      Height = 25
      TabOrder = 1
      Text = ''
      OnExit = edtValorExit
      OnKeyPress = edtValorKeyPress
    end
  end
end
