unit uCadAbastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Mask;

type
  TfrmAbastecimento = class(TForm)
    Panel1: TPanel;
    edtData: TDateTimePicker;
    Label2: TLabel;
    rgTanque: TRadioGroup;
    rgBomba: TRadioGroup;
    edtQtde: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edtValorImp: TEdit;
    Label5: TLabel;
    pnlConfirmar: TPanel;
    btnConfirmarDados: TButton;
    btnCancelar: TButton;
    edtValor: TMaskEdit;
    procedure btnConfirmarDadosClick(Sender: TObject);
    procedure edtValorExit(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtQtdeExit(Sender: TObject);
    procedure edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbastecimento: TfrmAbastecimento;

implementation

{$R *.dfm}

uses
  uDM;

procedure TfrmAbastecimento.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmAbastecimento.btnConfirmarDadosClick(Sender: TObject);
var
  Erro: string;
begin
  try
    dm.Abastecimento.Tanque:= rgTanque.ItemIndex;
    dm.Abastecimento.Bomba := rgbomba.ItemIndex;
    dm.Abastecimento.data  := edtData.date;
    dm.Abastecimento.QTDE  := StrToFloat(edtQtde.Text);
    dm.Abastecimento.Valor := StrToFloat(edtValorImp.text);

    dm.Abastecimento.Inserir_Alterar(Erro);
  finally
    MessageDlg(' Abastecimento registrado com sucesso! ', mtInformation, [mbOK], 0);
    close;
  end;

end;

procedure TfrmAbastecimento.edtQtdeExit(Sender: TObject);
begin
  if edtQtde.Text = '' then
  begin
     MessageDlg('Favor preencher quantidade do abastecimento! ', mtInformation, [mbOK], 0);
     edtQtde.SetFocus;
  end;
end;

procedure TfrmAbastecimento.edtQtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (key in [','] = false) and (word(key) <> vk_back)) then
     key := #0;
end;

procedure TfrmAbastecimento.edtValorExit(Sender: TObject);
var
  imposto: Real;
begin
 // edtValorImp.Text:= edtValor.Text * 13%;

  if edtvalor.Text = '' then
  begin
     MessageDlg('Favor preencher valor do abastecimento! ', mtInformation, [mbOK], 0);
     edtvalor.SetFocus;
  end;

  edtValorImp.text:= FloatToStr(StrToFloat(edtValor.Text)*1.13);
end;

procedure TfrmAbastecimento.edtValorKeyPress(Sender: TObject; var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (key in [','] = false)and (word(key) <> vk_back)) then
     key := #0;
end;

procedure TfrmAbastecimento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
       close;
end;

end.
