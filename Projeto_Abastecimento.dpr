program Projeto_Abastecimento;

uses
  Vcl.Forms,
  uPrincipal in 'Fontes\uPrincipal.pas' {frmPrincipal},
  uDM in 'Fontes\uDM.pas' {DM: TDataModule},
  uCadAbastecimento in 'Fontes\uCadAbastecimento.pas' {frmAbastecimento},
  classe.Abastecimento in 'Fontes\classe.Abastecimento.pas',
  uRelatorio in 'Fontes\uRelatorio.pas' {frmRelatorio},
  rRelatorio in 'Fontes\rRelatorio.pas' {frmMostraRelatorio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
