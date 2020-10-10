void main(List<String> args) {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.

  List<String> itemPaciente;
  List<String> nomeSobrenomePaciente;
  List<String> sobrenomePaciente = [];
  int pacienteAcima20 = 0;

  for (int iA = 0; iA < pacientes.length; iA++) {
    itemPaciente = pacientes[iA].split('|');
    nomeSobrenomePaciente = itemPaciente[0].split(' ');

    while (!sobrenomePaciente.contains(nomeSobrenomePaciente[1])) {
      sobrenomePaciente.add(nomeSobrenomePaciente[1]);
    }

    for (int iB = 0; iB < itemPaciente.length; iB++) {
      if (iB == 1) {
        pacienteAcima20 = pacienteAcima20 + (int.parse(itemPaciente[iB]) > 20 ? 1 : 0);
      }
    }
  }

  print('A Quantidade Pacientes com mais de 20 anos = $pacienteAcima20 \n');

  for (int iC = 0; iC < sobrenomePaciente.length; iC++) {
    print('Familia ${sobrenomePaciente[iC]} :');

    for (int iD = 0; iD < pacientes.length; iD++) {
      itemPaciente = pacientes[iD].split('|');
      nomeSobrenomePaciente = itemPaciente[0].split(' ');

      if (nomeSobrenomePaciente[1] == sobrenomePaciente[iC]) {
        print('  ${nomeSobrenomePaciente[0]}');
      }
    }
    print(' ');
  }
}
