unit uRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmRelatorio = class(TForm)
    edtDataIni: TDateTimePicker;
    Label2: TLabel;
    edtDataFim: TDateTimePicker;
    Label1: TLabel;
    pnlConfirmar: TPanel;
    btnConfirmarDados: TButton;
    btnCancelar: TButton;
    ds_abastecimento: TDataSource;
    procedure btnConfirmarDadosClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    var
      Registros: Boolean;
  public
    { Public declarations }
  end;

var
  frmRelatorio: TfrmRelatorio;

implementation

{$R *.dfm}

uses
  uDM, rRelatorio;

procedure TfrmRelatorio.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRelatorio.btnConfirmarDadosClick(Sender: TObject);
var
  dataini, datafim: string;
begin
  dataini:=  DateToStr(edtDataIni.Date);
  dataini:= StringReplace(dataini, '/','.',[rfReplaceAll]);

  datafim:=  DateToStr(edtdatafim.Date);
  datafim:= StringReplace(datafim, '/','.',[rfReplaceAll]);

  ds_abastecimento.DataSet:= dm.Abastecimento.ConsultaSQL(dataini,datafim);

  frmMostraRelatorio:= TfrmMostraRelatorio.Create(self);
  frmMostraRelatorio.label_periodo.Caption:= DateToStr(edtDataIni.Date) +' at? '+ DateToStr(edtDataFim.Date);
  frmMostraRelatorio.rf_Abastecimento.Preview();
end;

procedure TfrmRelatorio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = VK_ESCAPE then
       close;
end;

procedure TfrmRelatorio.FormShow(Sender: TObject);
begin
  // ds_abastecimento.DataSet:= dm.Abastecimento.ConsultaSQL('11.01.22','11.01.22');
end;

end.
