program BancoSimples;
uses crt, SysUtils;

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
    conta.historico[conta.transacoes] := 'Depósito: ' + FloatToStr(valor);
    writeln('Depósito realizado com sucesso!');
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
        writeln('5. Exibir Historico');
        writeln('6. Sair');
        readln(opcao);

        case opcao of
            1: CriarConta();
            2: begin
                writeln('Digite o ID da conta para depósito: ');
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
            // 4: begin
            //     writeln('Digite o ID da conta de origem: ');
            //     readln(contaId);
            //     writeln('Digite o ID da conta de destino: ');
            //     readln(contaDestinoId);
            //     writeln('Digite o valor: ');
            //     readln(valor);
            //     Transferir(contas[contaId], contas[contaDestinoId], valor);
            // end;
            // 5: begin
            //     writeln('Digite o ID da conta para exibir o histórico: ');
            //     readln(contaId);
            //     ExibirHistorico(contas[contaId]);
            // end;
        end;
    until opcao = 6;
end;

begin
    Menu();
end.

