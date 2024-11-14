procedure Depositar(var conta: TConta; valor: real);
begin
    conta.saldo := conta.saldo + valor;
    conta.transacoes := conta.transacoes + 1;
    conta.historico[conta.transacoes] := 'Depósito: ' + FloatToStr(valor);
    writeln('Depósito realizado com sucesso!');
end;

