import 'dart:io';

void main() {
  print('=======================================');
  print('SISTEMA SIMPLES DE COMPRESSÃO: BY ITALO');
  print('CRIADO EM 15/12/2021');
  print('=======================================');

  print('\nDigite o Local do Arquivo:');

  String local = stdin.readLineSync()!;
  File arquivo = File(local);
  List<String> contents = arquivo.readAsLinesSync();

  print('aguarde...');
}
