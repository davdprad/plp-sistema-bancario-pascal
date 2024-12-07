procedure ExibirHistorico(conta: TConta);
var
    i: integer;
begin
    writeln('Histórico de Transações da Conta ', conta.id, ':');
    for i := 1 to conta.transacoes do
    begin
        writeln(conta.historico[i]);
    end;
end;
