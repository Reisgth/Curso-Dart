import 'dart:io';


List<Map<String, dynamic>> pessoas = [];

cadastrar() {
  Map<String, dynamic> pessoa = {};
  
  print("Digite o Nome: ");
  pessoa["nome"] = stdin.readLineSync();
  print("Digite o Idade: ");
  pessoa["idade"] = stdin.readLineSync();
  print("Digite o sexo: ");
  pessoa["sexo"] = stdin.readLineSync();

  pessoas.add(pessoa);
}

main() {
  while (true) {
    String comando;

    print("Digite seu comando: ");
    comando = stdin.readLineSync().toString();

    print("\x1B[2J\x1B[0;0H");

    if (comando == "sair") {
      return 0;
    } else if (comando == "cadastrar") {
      cadastrar();
      print("\x1B[2J\x1B[0;0H");
    } else if (comando == "mostrar") {
      print("\x1B[2J\x1B[0;0H");
      print(pessoas);
    } else {
      print("COMANDO INEXISTENTE");
    }
  }
}
