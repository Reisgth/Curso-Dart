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
  print("\x1B[2J\x1B[0;0H");
}

cadastrarPessoas() {
  while (true) {
    String comando;

    print("Digite seu comando: ");
    print("cadastrar - inserir nova pessoa");
    print("mostrar - para mostrar pessoas cadastradas");
    print("sair - para encerrar");
    comando = stdin.readLineSync().toString();

    print("\x1B[2J\x1B[0;0H");

    if (comando == "sair") {
      break;
    } else if (comando == "cadastrar") {
      cadastrar();
    } else if (comando == "mostrar") {
      if(pessoas.isEmpty) {
        print("LISTA VAZIA");
      } else {
        print("\x1B[2J\x1B[0;0H");
        print(pessoas);
      }
    } else {
      print("COMANDO INEXISTENTE");
    }
  }
}
