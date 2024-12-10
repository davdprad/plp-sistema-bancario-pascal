program BancoSimples;
uses SysUtils;

// Estrutura de uma conta
type
    TConta = record
        id: integer;
        nome: string[50];
        saldo: real;
        historico: array[1..100] of string;
        transacoes: integer;
    end;

// Array para as contas
var
    contas: array[1..100] of TConta;
    numContas: integer = 0;

// Função criar conta
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

// Função de depósito
procedure Depositar(var conta: TConta; valor: real);
begin
    conta.saldo := conta.saldo + valor;
    conta.transacoes := conta.transacoes + 1;
    conta.historico[conta.transacoes] := 'Deposito: ' + FloatToStr(valor);
    writeln('Deposito realizado com sucesso!');
end;

// Função de saque
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

// Função de transferencia
procedure Transferir(var contaOrigem, contaDestino: TConta; valor: real);
begin
    if valor <= contaOrigem.saldo then
    begin
        contaOrigem.saldo := contaOrigem.saldo - valor;
        contaDestino.saldo := contaDestino.saldo + valor;

        contaOrigem.transacoes := contaOrigem.transacoes + 1;
        contaOrigem.historico[contaOrigem.transacoes] := 'Transferencia enviada: ' + FloatToStr(valor);

        contaDestino.transacoes := contaDestino.transacoes + 1;
        contaDestino.historico[contaDestino.transacoes] := 'Transferencia recebida: ' + FloatToStr(valor);

        writeln('Transferencia realizada com sucesso!');
    end
    else
        writeln('Saldo insuficiente para transferencia.');
end;

// Exibir saldo
procedure ExibirSaldo(conta: Tconta);
begin
    writeln('O saldo da conta de ', conta.nome, ' eh de: ', FloatToStr(conta.saldo));
end;

// Exibir histórico
procedure ExibirHistorico(conta: TConta);
var
    i: integer;
begin
    writeln('Historico de Transacoes da Conta ', conta.id, ':');
    for i := 1 to conta.transacoes do
    begin
        writeln('- ', conta.historico[i]);
    end;
end;

procedure Menu();
var
    opcao, contaId, contaDestinoId: integer;
    valor: real;
begin
    repeat
        writeln('--- Sistema Bancario ---');
        writeln('1. Criar Conta');
        writeln('2. Depositar');
        writeln('3. Sacar');
        writeln('4. Transferir');
        writeln('5. Ver saldo');
        writeln('6. Exibir Historico');
        writeln('7. Sair');
        readln(opcao);

        case opcao of
            1: CriarConta();
            2: begin
                writeln('Digite o ID da conta para deposito: ');
                readln(contaId);
                writeln('Digite o valor: ');
                readln(valor);
                Depositar(contas[contaId], valor);
            end;
            3: begin
                writeln('Digite o ID da conta para saque: ');
                readln(contaId);
                writeln('Digite o valor: ');
                readln(valor);
                Sacar(contas[contaId], valor);
            end;
            4: begin
                writeln('Digite o ID da conta de origem: ');
                readln(contaId);
                writeln('Digite o ID da conta de destino: ');
                readln(contaDestinoId);
                writeln('Digite o valor: ');
                readln(valor);
                Transferir(contas[contaId], contas[contaDestinoId], valor);
            end;
            5: begin
                writeln('Digite o ID da conta para ver o saldo: ');
                readln(contaId);
                writeln('O saldo da conta de ', contas[contaId].nome, ' eh de: ', FloatToStr(contas[contaId].saldo));
            end;
            6: begin
                writeln('Digite o ID da conta para exibir o historico: ');
                readln(contaId);
                ExibirHistorico(contas[contaId]);
            end;
        end;
    until opcao = 7;
end;

begin
    Menu();
end.
