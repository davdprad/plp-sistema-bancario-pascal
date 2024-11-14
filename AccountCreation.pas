type
    TConta = record
        id: integer;
        saldo: real;
        historico: array[1..100] of string;
        transacoes: integer;
    end;

var
    contas: array[1..100] of TConta;
    numContas: integer;
