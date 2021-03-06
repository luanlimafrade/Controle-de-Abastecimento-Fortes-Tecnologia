unit classe.Abastecimento;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.UI, firedac.DApt;

type
  TAbastecimento = Class
    private
     FConexao: TFDConnection;
     FCodigo : integer;
     FBomba  : integer;
     FData   : TDateTime;
     FQtde   : Real;
     FValor  : Real;
     FTanque : integer;


    Public
      property   Conexao: TFDConnection read  FConexao  write  FConexao;
      property   Codigo : integer       read  FCodigo   write  FCodigo;
      property   Bomba  : integer       read  FBomba    write  FBomba;
      property   Data   : TDateTime     read  FData     write  FData;
      property   Qtde   : Real          read  FQtde     write  FQtde;
      property   Valor  : Real          read  FValor    write  FValor;
      property   Tanque : integer       read  FTanque   write  FTanque;

      constructor create ( Conexao : TFdConnection );
      destructor Destroy ; Override;

      function Inserir_Alterar(out Erro:string): Boolean;
      function proximoCodigo(Tabela, Campo : String): integer;
      function ConsultaSQL(Texto: string; Texto2: string): TFDQUERY;



  End;

implementation

uses
  uDM;

{ TAbastecimento }

function TAbastecimento.ConsultaSQL(Texto: string; Texto2: string): TFDQUERY;
var
  QryConsulta: TFDQuery;
begin
  //Fun??o para consulta( neste caso, utilizada somente no relat?rio)
  try
    FConexao.Connected:= false;
    FConexao.Connected:= true;

    QryConsulta := TFDQuery.Create(nil);
    QryConsulta.Connection:= FConexao;

    with QryConsulta do
    begin
      close;
      sql.Clear;
      SQL.Add('select codigo, iif(bomba = 1,''Bomba 2'',''Bomba 1'')bomba, data,qtde, iif(tanque = 1, ''?leo Diesel'',''Gasolina'')TANQUE, valor from abastecimento where data between :p_texto and :p_texto2');
      SQL.Add('order by data');
      QryConsulta.ParamByName('p_texto').AsString:= Texto;
      QryConsulta.ParamByName('p_texto2').AsString:= Texto2;
      QryConsulta.open;

    end;
  finally
    result:= QryConsulta;
  end;

end;

constructor TAbastecimento.create(Conexao: TFdConnection);
begin
  FConexao:= Conexao;
end;

destructor TAbastecimento.Destroy;
begin

  inherited;
end;

function TAbastecimento.Inserir_Alterar(out Erro: string): Boolean;
var
  QryInserir: TFDQuery;
begin
  //Fun??o para inserir ou alterar (caso fosse necess?rio)
  try
    try
      FConexao.Connected:= false;
      FConexao.Connected:= true;

      QryInserir := TFDQuery.Create(nil);
      QryInserir.Connection:= FConexao;


      with QryInserir do
      begin
         close;
         sql.Clear;
         SQL.add('insert into abastecimento (codigo, bomba, data, qtde, valor, tanque)');
         SQL.add('values (:p_codigo, :p_bomba, :p_data, :p_qtde, :p_valor, :p_tanque)');

         ParamByName('p_codigo').asinteger:= proximoCodigo('Abastecimento', 'Codigo');
         ParamByName('p_bomba').asinteger := FBomba;
         ParamByName('p_data').asdate     := FData;
         ParamByName('p_qtde').AsFloat    := FQtde;
         ParamByName('p_valor').AsFloat   := FValor;
         ParamByName('p_tanque').asinteger:= FTanque;

         ExecSQL;
      end;

      Result:= true;

    except
       on E: exception do
       begin
          erro:= e.message;
          Result:= false;
       end;
    end;
  finally
      QryInserir.Destroy;
  end;
end;

function TAbastecimento.proximoCodigo(Tabela, Campo: String): integer;
var
  QryConsulta : TFDQUERY;
begin
  result:= 1;

  try
    DM.FDConnection1.Connected:= false;
    DM.FDConnection1.Connected:= True;

    QryConsulta:= TFDQuery.Create(nil);
    QryConsulta.Connection:= DM.FDConnection1;

    with QryConsulta do
    begin

     close;
     SQL.Clear;
     sql.Add('SELECT MAX ('+Campo+') as CODIGO FROM '+ Tabela);
     Open;

     if FieldByName('CODIGO').AsString <> '' then
     begin
       Result:= FieldByName('CODIGO').AsInteger +1;
     end;
    end;
  finally
     QryConsulta.Destroy;
  end;
end;

end.
