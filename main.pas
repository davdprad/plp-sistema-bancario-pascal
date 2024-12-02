program BancoSimples;
uses crt, SysUtils;

type
    TConta = record
        id: integer;
        nome: string[50];
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

    writeln('Digite o nome do titular da conta: ');
    readln(contas[numContas].nome);

    contas[numContas].saldo := 0.0;
    contas[numContas].transacoes := 0;
    writeln('Conta criada com ID: ', numContas, ' e titular: ', contas[numContas].nome);
end;

//Funcao de Deposito
procedure Depositar(var conta: TConta; valor: real);
begin
    conta.saldo := conta.saldo + valor;
    conta.transacoes := conta.transacoes + 1;
    conta.historico[conta.transacoes] := 'Depósito: ' + FloatToStr(valor);
    writeln('Depósito realizado com sucesso!');
end;

// Função de Saque

procedure Sacar(var conta: TConta; valor: real);
begin
    if valor <= conta.saldo then
    begin
        conta.saldo := conta.saldo - valor;
        conta.transacoes := conta.transacoes + 1;
        conta.historico[conta.transacoes] := 'Saque: ' + FloatToStr(valor);
        writeln('Saque realizado com sucesso!');
    end
    else
        writeln('Saldo insuficiente.');
end;


begin
    CriarConta();

    //CriarConta();
    Depositar(contas[1], 100.0);  // Exemplo de deposito de 100 reais
    Sacar(contas[1], 50.0); // Exemplo de saque de 50 reais

    // Testando o deposito
    //Depositar(contas[1], 100.0);  // Exemplo de deposito de 100 reais
end.
