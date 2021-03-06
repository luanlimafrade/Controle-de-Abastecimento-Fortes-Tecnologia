object frmMostraRelatorio: TfrmMostraRelatorio
  Left = 0
  Top = 0
  Caption = 'frmMostraRelatorio'
  ClientHeight = 768
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rf_Abastecimento: TRLReport
    AlignWithMargins = True
    Left = 8
    Top = 0
    Width = 794
    Height = 1123
    AdjustableMargins = True
    DataSource = frmRelatorio.ds_abastecimento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    object rf_cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 37
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Transparent = False
      object RLSystemInfo1: TRLSystemInfo
        Left = 16
        Top = 16
        Width = 39
        Height = 17
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 625
        Top = 20
        Width = 41
        Height = 17
        Info = itHour
        Text = ''
      end
    end
    object rf_coluna: TRLBand
      Left = 38
      Top = 135
      Width = 718
      Height = 46
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Transparent = False
      object Label1: TLabel
        Left = 121
        Top = 16
        Width = 36
        Height = 21
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 249
        Top = 16
        Width = 56
        Height = 21
        Caption = 'Tanque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 382
        Top = 16
        Width = 54
        Height = 21
        Caption = 'Bomba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 629
        Top = 16
        Width = 40
        Height = 21
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 16
        Top = 16
        Width = 55
        Height = 21
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 502
        Top = 16
        Width = 90
        Height = 21
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object rf_titulo: TRLBand
      Left = 38
      Top = 75
      Width = 718
      Height = 60
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 33
        Align = faTop
        Alignment = taCenter
        Caption = 'Controle de Abastecimentos por Per'#237'odo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object label_periodo: TRLLabel
        Left = 0
        Top = 33
        Width = 718
        Height = 21
        Align = faTop
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
    end
    object rf_detail: TRLBand
      Left = 38
      Top = 181
      Width = 718
      Height = 32
      Transparent = False
      object RLDBText1: TRLDBText
        Left = 121
        Top = 6
        Width = 36
        Height = 17
        DataField = 'DATA'
        DataSource = frmRelatorio.ds_abastecimento
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 250
        Top = 6
        Width = 55
        Height = 17
        DataField = 'TANQUE'
        DataSource = frmRelatorio.ds_abastecimento
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 382
        Top = 6
        Width = 48
        Height = 17
        DataField = 'BOMBA'
        DataSource = frmRelatorio.ds_abastecimento
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 625
        Top = 7
        Width = 44
        Height = 17
        DataField = 'VALOR'
        DataSource = frmRelatorio.ds_abastecimento
        DisplayMask = 'R$#,###0.000'
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 16
        Top = 7
        Width = 53
        Height = 17
        DataField = 'CODIGO'
        DataSource = frmRelatorio.ds_abastecimento
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 521
        Top = 6
        Width = 37
        Height = 17
        DataField = 'QTDE'
        DataSource = frmRelatorio.ds_abastecimento
        Text = ''
      end
    end
    object rf_rodape: TRLBand
      Left = 38
      Top = 213
      Width = 718
      Height = 52
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Transparent = False
      object Label6: TLabel
        Left = 521
        Top = 16
        Width = 86
        Height = 21
        Caption = 'Valor Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 273
        Top = 16
        Width = 136
        Height = 21
        Caption = 'Quantidade Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 613
        Top = 18
        Width = 81
        Height = 17
        DataField = 'VALOR'
        DataSource = frmRelatorio.ds_abastecimento
        DisplayMask = 'R$#,###0.000'
        Info = riSum
        Text = ''
      end
      object RLDBResult2: TRLDBResult
        Left = 415
        Top = 18
        Width = 74
        Height = 17
        DataField = 'QTDE'
        DataSource = frmRelatorio.ds_abastecimento
        DisplayMask = '#,###0.000'
        Info = riSum
        Text = ''
      end
    end
  end
end
