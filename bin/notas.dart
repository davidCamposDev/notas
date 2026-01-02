import 'dart:io';

void main() {
  List<String> notas = <String>[];
  menu(notas);
}

//Função Capturar comando

String getComando() {
  print(
    "\nDigite um Comando:\n 1 -  Adicionar Nota\n 2 - Listar notas\n 3 - Sair",
  );
  List<String> comandos = <String>["1", "2", "3"];
  String? entrada = "";

  entrada = stdin.readLineSync();

  if (entrada == null || !comandos.contains(entrada)) {
    print("Comando Inválido!");
    getComando();
  }

  return entrada!;
}

//Função Adicionar Notas

List<String> adicionarNota(List<String> notas) {
  print("\nEscreva uma Nota!");

  String? nota = "";

  nota = stdin.readLineSync();

  if (nota == null || nota.isEmpty) {
    print("\nNão é possivel adiconar uma nota vazia");
    adicionarNota(notas);
  }

  notas.add(nota!);

  return notas;
}

//Função Lista Notas

void listarNotas(List<String> notas) {
  for (var i = 0; i < notas.length; i++) {
    print(notas[i]);
  }
}

//função Menu

void menu(List<String> notas) {
  String comando = getComando();

  switch (comando) {
    case "1":
      adicionarNota(notas);
      menu(notas);

    case "2":
      listarNotas(notas);
      menu(notas);

    case "3":
      print("\nAté Breve!");
  }
}
