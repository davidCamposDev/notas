import 'dart:io';

void main() {
  List<String> notas = <String>[];
  getComando();
  adicionarNota(notas);
}

String getComando() {
  print("Digite um Comando: 1 -  Adicionar Nota, 2 - Listar notas, 3 - Sair");
  List<String> comandos = <String>["1", "2", "3"];
  String? entrada = "";

  entrada = stdin.readLineSync();

  if (entrada == null || !comandos.contains(entrada)) {
    print("Comando Inválido!");
    getComando();
  }

  return entrada!;
}

List<String> adicionarNota(List<String> notas) {
  print("Escreva uma Nota!");

  String? nota = "";

  nota = stdin.readLineSync();

  if (nota == null || nota.isEmpty) {
    print("Não é possivel adiconar uma nota vazia");
    adicionarNota(notas);
  }

  notas.add(nota!);

  return notas;
}
