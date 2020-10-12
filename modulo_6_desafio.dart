import 'dart:collection';

main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuel|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  // Baseado na lista acima.
  // 1  Remover os duplicados
  // 2  Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  // 3  Filtrar e deixar a lista somente com pessoas maiores de 18 anos
  //    e mostre a quantidade de pessoas com mais de 18 anos
  // 4  Encontre a pessoa mais velha.

  SplayTreeSet<String> cadastro = SplayTreeSet<String>();
  int qtdMasculino = 0;
  int qtdFeminino = 0;
  int qtdMasAcima18 = 0;
  int qtdFemAcima18 = 0;
  int maisVelhaMas = 0;
  int maisVelhaFem = 0;
  List<String> pessoaMaisVelhaMas;
  List<String> pessoaMaisVelhaFem;
  List<String> itemCadastro;
  var pessoasAcima18 = [];
  var pessoasMasAcima18 = [];
  var pessoasFemAcima18 = [];

  for (var iA = 0; iA < pessoas.length; iA++) {
    cadastro.add(pessoas[iA]);
  }

  for (var iB = 0; iB < cadastro.length; iB++) {
    itemCadastro = cadastro.elementAt(iB).split('|');

    if (int.parse(itemCadastro[1]) > 18) {
      pessoasAcima18.add(itemCadastro);
      if (itemCadastro[2].toLowerCase().contains('masculino')) {
        qtdMasAcima18++;
        pessoasMasAcima18.add(itemCadastro);
        if (int.parse(itemCadastro[1]) > maisVelhaMas) {
          maisVelhaMas = int.parse(itemCadastro[1]);
          pessoaMaisVelhaMas = itemCadastro;
        } else {
          maisVelhaMas = maisVelhaMas;
          pessoaMaisVelhaMas = pessoaMaisVelhaMas;
        }
      } else {
        qtdFemAcima18++;
        pessoasFemAcima18.add(itemCadastro);
        if (int.parse(itemCadastro[1]) > maisVelhaFem) {
          maisVelhaFem = int.parse(itemCadastro[1]);
          pessoaMaisVelhaFem = itemCadastro;
        } else {
          maisVelhaFem = maisVelhaFem;
          pessoaMaisVelhaFem = pessoaMaisVelhaFem;
        }
      }
    }
    if (cadastro.elementAt(iB).toLowerCase().contains('masculino')) {
      qtdMasculino++;
    }

    if (cadastro.elementAt(iB).toLowerCase().contains('feminino')) {
      qtdFeminino++;
    }
  }

  print('MÓDULO 6 - DESAFIO \n');
  print('1 - Remover os duplicados:');
  print('');
  print('Lista/Set do Cadastro sem Duplicidade:');
  for (var iC = 0; iC < cadastro.length; iC++) {
    print(cadastro.elementAt(iC));
  }
  print('');
  print('2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino:');
  print('');
  print('Quantidade de Pessoas do Sexo Masculino = $qtdMasculino');
  print('Quantidade de Pessoas do Sexo Feminino = $qtdFeminino');
  print('');
  print('3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e ' + 'mostre a quantidade de pessoas com mais de 18 anos');
  print('');
  print('Quantidade de Pessoas com +18Anos = ${qtdMasAcima18 + qtdFemAcima18}');
  for (var iD = 0; iD < pessoasAcima18.length; iD++) {
    print(pessoasAcima18[iD]);
  }
  print('');
  print('Quantidade de Pessoas do Sexo Masculino +18Anos = $qtdMasAcima18');
  for (var iE = 0; iE < pessoasMasAcima18.length; iE++) {
    print(pessoasMasAcima18[iE]);
  }
  print('');
  print('Quantidade de Pessoas do Sexo Feminino +18Anos = $qtdFemAcima18');
  for (var iF = 0; iF < pessoasFemAcima18.length; iF++) {
    print(pessoasFemAcima18[iF]);
  }
  print('');
  print('4 - Encontre a pessoa mais velha:');
  print('');
  print('A Pessoa mais velha do Sexo Masculino = $pessoaMaisVelhaMas');
  print('A Pessoa mais velha do Sexo Feminino = $pessoaMaisVelhaFem');
}
