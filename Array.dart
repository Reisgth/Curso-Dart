import 'dart:io';

main() {
  
  var nomes = [];
  bool isTrue = true;

  while (isTrue) {
    print("\nDigite um nome ou sair para finalizar: ");
    String text = stdin.readLineSync().toString();

    if (text == "sair") {
      print("Programa Finzalido");
      isTrue = false;
    } else {
      nomes.add(text);
    }
  }

  print("$nomes\n");

  var carros = [];

  carros = ["Gol", "Celta", "Kadett", "Agile"];

  print(carros);

  carros.add("Prisma"); // Adiciona no final do array
  carros.remove("Gol"); // Procura o valor e remove
  carros.removeAt(2); // Remove o item em determinada posição

  print(carros);
}