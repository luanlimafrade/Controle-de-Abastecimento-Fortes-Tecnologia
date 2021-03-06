unit rRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  classe.Abastecimento, FireDAC.Comp.Client;

type
  TfrmMostraRelatorio = class(TForm)
    rf_Abastecimento: TRLReport;
    rf_coluna: TRLBand;
    rf_cabecalho: TRLBand;
    rf_titulo: TRLBand;
    rf_detail: TRLBand;
    rf_rodape: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel1: TRLLabel;
    label_periodo: TRLLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    Label5: TLabel;
    RLDBText5: TRLDBText;
    Label6: TLabel;
    RLDBResult1: TRLDBResult;
    Label7: TLabel;
    RLDBText6: TRLDBText;
    Label8: TLabel;
    RLDBResult2: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMostraRelatorio: TfrmMostraRelatorio;

implementation

{$R *.dfm}

uses
  uRelatorio, uDM;

end.
