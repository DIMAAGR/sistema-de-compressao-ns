import 'dart:io';

List<String> dataformatada = [];
List<String> dataEmCache = [];

void main() {
  print('=======================================');
  print('SISTEMA SIMPLES DE COMPRESSÃO: BY ITALO');
  print('CRIADO EM 15/12/2021');
  print('=======================================');

  print('\nDigite o Local do Arquivo:');

  String local = stdin.readLineSync()!;
  File? arquivo;

  try {
    arquivo = File(local);
  } catch (e) {
    print('ERROR! NÃO FOI POSSÍVEL ENCONTRAR O ARQUIVO!');
  }

  List<String> contents = arquivo!.readAsLinesSync();

  print('aguarde...');
  print('CONTEUDO:');

  Map<String, String> dictionary = generateDictionary(contents.toString());
  String compressed = compressdata(dictionary, contents.toString());
  print(compressed);
}

String compressdata(Map<String, String> dictionary, String contents) {
  String dataformatada = contents.replaceAll('[', '').replaceAll(']', '');

  dictionary.forEach((key, value) {
    dataformatada.replaceAll('value', 'key');
  });
  return dataformatada;
}

generateDictionary(String data) {
  String letters = 'a b c d e f g h i j  k l m n o p q r s t u v w x y z';
  String numbers = '0 1 2 3 4 5 6 7 8 9';
  String symbols = '-';

  List<String> lettersL = letters.split(' ');
  List<String> numbersL = numbers.split(' ');
  List<String> symbolsL = numbers.split(' ');

  dataformatada = data.replaceAll('[', '').replaceAll(']', '').split(' ');
  dataEmCache = data.replaceAll('[', '').replaceAll(']', '').split(' ');

  //String code = '';
  Map<String, String> map = {};

  //print(dataEmCache);

  for (String i in numbersL) {
    for (String j in lettersL) {
      map.addAll({'$i$j': dataInCache(dataEmCache, map)});
      print('Data em CACHE size: ${dataEmCache.length}');
    }
    if (dataEmCache.isEmpty) return map;
  }

  for (String i in numbersL) {
    for (String k in lettersL) {
      for (String j in lettersL) {
        Map<String, String> cache = {'$i${k.toUpperCase()}$j': dataInCache(dataEmCache, map)};
        print('Data em CACHE size: ${dataEmCache.length}');
        map.addAll(cache);
      }
    }
    if (dataEmCache.isEmpty) return map;
  }

  for (String i in numbersL) {
    for (String k in lettersL) {
      for (String j in lettersL) {
        Map<String, String> cache = {'$i$k$j': dataInCache(dataEmCache, map)};
        print('Data em CACHE size: ${dataEmCache.length}');
        map.addAll(cache);
      }
    }
    if (dataEmCache.isEmpty) return map;
  }

  for (String i in numbersL) {
    for (String k in lettersL) {
      for (String w in lettersL) {
        for (String j in lettersL) {
          Map<String, String> cache = {'$i$k$w$j': dataInCache(dataEmCache, map)};
          print('Data em CACHE size: ${dataEmCache.length}');
          map.addAll(cache);
        }
      }
    }
    if (dataEmCache.isEmpty) return map;
  }
  for (String i in numbersL) {
    for (String k in lettersL) {
      for (String w in lettersL) {
        for (String j in lettersL) {
          Map<String, String> cache = {'$i$k${w.toUpperCase()}$j': dataInCache(dataEmCache, map)};
          print('Data em CACHE size: ${dataEmCache.length}');
          map.addAll(cache);
        }
      }
    }
    if (dataEmCache.isEmpty) return map;
  }
  return map;
}
// C:\Users\Italo\Documents\o hobit.txt
// C:\Users\Italo\Documents\lorem.txt
// C:\Users\Italo\Documents\cgf.txt

String dataInCache(List<String> data, Map<String, String> map) {
  for (String i in data) {
    if (map.containsValue(i) == false) {
      while (dataEmCache.contains(i)) {
        dataEmCache.remove(i);
      }
      return i;
    }
  }

  return '';
}

//Generics >> Genérico (ELE PODE SER LITERALMENTE QUALQUER COISA!)
