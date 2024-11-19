program BancoSimples;

uses crt, SysUtils;

// Tela de Caixa Eletrônico Inicial
procedure DesenhaCaixaEletronico;
begin
  clrscr;
  writeln('+----------------------------------------------------+');
  writeln('|                                                    |');
  writeln('|                                                    |');
  writeln('|                     Banco Pascal                   |');
  writeln('|                                                    |');
  writeln('|    +------------------------------------------+    |');
  writeln('|    |                                          |    |');
  writeln('|    |           Bem-vindo ao Banco             |    |');
  writeln('|    |                 Pascal!                  |    |');
  writeln('|    |                                          |    |');
  writeln('|    |       Pressione ENTER para continuar     |    |');
  writeln('|    +------------------------------------------+    |');
  writeln('|                                                    |');
  writeln('|        [*]        [*]        [*]        [*]        |');
  writeln('|                                                    |');
  writeln('|                                                    |');
  writeln('+----------------------------------------------------+');
end;

// Tela de Criação de Conta
procedure TelaCriarConta;
begin
  clrscr;
  writeln('+----------------------------------------------------+');
  writeln('|                                                    |');
  writeln('|                   Criação de Conta                 |');
  writeln('|                                                    |');
  writeln('|    +------------------------------------------+    |');
  writeln('|    |                                          |    |');
  writeln('|    |         Conta criada com sucesso!        |    |');
  writeln('|    |         ID: ', numContas, '              |    |');
  writeln('|    |                                          |    |');
  writeln('|    |     Pressione ENTER para continuar       |    |');
  writeln('|    +------------------------------------------+    |');
  writeln('|                                                    |');
  writeln('+----------------------------------------------------+');
end;

// Tela de Depósito
procedure TelaDepositar;
begin
  clrscr;
  writeln('+----------------------------------------------------+');
  writeln('|                                                    |');
  writeln('|                      Depósito                      |');
  writeln('|                                                    |');
  writeln('|    +------------------------------------------+    |');
  writeln('|    |                                          |    |');
  writeln('|    |     Depósito realizado com sucesso!      |    |');
  writeln('|    |     Valor depositado: [VALOR]            |    |');
  writeln('|    |                                          |    |');
  writeln('|    |     Pressione ENTER para continuar       |    |');
  writeln('|    +------------------------------------------+    |');
  writeln('|                                                    |');
  writeln('+----------------------------------------------------+');
end;

// Tela de Saque
procedure TelaSacar;
begin
  clrscr;
  writeln('+----------------------------------------------------+');
  writeln('|                                                    |');
  writeln('|                       Saque                        |');
  writeln('|                                                    |');
  writeln('|    +------------------------------------------+    |');
  writeln('|    |                                          |    |');
  writeln('|    |     Saque realizado com sucesso!         |    |');
  writeln('|    |     Valor sacado: [VALOR]                |    |');
  writeln('|    |                                          |    |');
  writeln('|    |     Pressione ENTER para continuar       |    |');
  writeln('|    +------------------------------------------+    |');
  writeln('|                                                    |');
  writeln('+----------------------------------------------------+');
end;

// Tela de Transferência
procedure TelaTransferir;
begin
  clrscr;
  writeln('+----------------------------------------------------+');
  writeln('|                                                    |');
  writeln('|                    Transferência                   |');
  writeln('|                                                    |');
  writeln('|    +------------------------------------------+    |');
  writeln('|    |                                          |    |');
  writeln('|    |     Transferência realizada com sucesso! |    |');
  writeln('|    |     Valor transferido: [VALOR]           |    |');
  writeln('|    |                                          |    |');
  writeln('|    |     Pressione ENTER para continuar       |    |');
  writeln('|    +------------------------------------------+    |');
  writeln('|                                                    |');
  writeln('+----------------------------------------------------+');
end;

// Tela de Histórico
procedure TelaHistorico;
begin
  clrscr;
  writeln('+----------------------------------------------------+');
  writeln('|                                                    |');
  writeln('|                      Histórico                     |');
  writeln('|                                                    |');
  writeln('|    +------------------------------------------+    |');
  writeln('|    |                                          |    |');
  writeln('|    |   Histórico de Transações da Conta [ID]  |    |');
  writeln('|    |   [HISTÓRICO DAS TRANSAÇÕES AQUI]        |    |');
  writeln('|    |                                          |    |');
  writeln('|    |     Pressione ENTER para continuar       |    |');
  writeln('|    +------------------------------------------+    |');
  writeln('|                                                    |');
  writeln('+----------------------------------------------------+');
end;

// Tela de Finalização do Sistema
procedure TelaFinalizandoSistema;
begin
  clrscr;
  writeln('+----------------------------------------------------+');
  writeln('|                                                    |');
  writeln('|                Finalizando o Sistema               |');
  writeln('|                                                    |');
  writeln('|    +------------------------------------------+    |');
  writeln('|    |                                          |    |');
  writeln('|    |         Obrigado por usar o Banco        |    |');
  writeln('|    |            Pascal! Até logo!             |    |');
  writeln('|    |                                          |    |');
  writeln('|    |                                          |    |');
  writeln('|    |     Pressione ENTER para continuar       |    |');
  writeln('|    +------------------------------------------+    |');
  writeln('|                                                    |');
  writeln('+----------------------------------------------------+');
  readln;
end;

// Tela de Menu
procedure TelaMenu;
begin
  clrscr; 
  writeln('+------------------------------------------------------+');
  writeln('|               Sistema Bancário - Menu                |');
  writeln('+------------------------------------------------------+');
  writeln('|                                                      |');
  writeln('| 1. Criar Conta                                       |');
  writeln('| 2. Depositar                                         |');
  writeln('| 3. Sacar                                             |');
  writeln('| 4. Transferir                                        |');
  writeln('| 5. Exibir Histórico                                  |');
  writeln('| 6. Sair                                              |');
  writeln('|                                                      |');
  writeln('+------------------------------------------------------+');
end;        

 
begin
    DesenhaCaixaEletronico();
    readln;
    clrscr;
    TelaMenu();
end.