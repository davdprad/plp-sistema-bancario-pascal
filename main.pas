program BancoSimples;
uses crt;

type
    TConta = record
        id: integer;
        saldo: real;
        historico: array[1..100] of string;
        transacoes: integer;
    end;

var
    contas: array[1..100] of TConta;
    numContas: integer = 0;

procedure CriarConta();
begin
    numContas := numContas + 1;
    contas[numContas].id := numContas;
    contas[numContas].saldo := 0.0;
    contas[numContas].transacoes := 0;
    writeln('Conta criada com ID: ', numContas);
end;

begin

    CriarConta();

end.