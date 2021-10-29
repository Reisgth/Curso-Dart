import 'dart:io';

Map<String, dynamic> pessoa = {};

cadastrar() {
  print("Digite o Nome: ");
  pessoa["nome"] = stdin.readLineSync();
  print("Digite o Idade: ");
  pessoa["idade"] = stdin.readLineSync();
  print("Digite o sexo: ");
  pessoa["sexo"] = stdin.readLineSync();
}
main() {
  Map<String, dynamic> maps = {
    "nome" : "Gustavo Reis",
    "idade" : 21,
    "cidade" : "Sorocaba", 
    "estado" : "SP",
  };

  print(maps["nome"]);
  print(maps["cidade"]);

  maps["cidade"] = "Votorantim";

  print(maps["cidade"]);

  print("\x1B[2J\x1B[0;0H");
  while(true) {
    String comando;

    print("Digite seu comando: ");
    comando = stdin.readLineSync().toString();

    if(comando == "sair") {
      return 0;
    } else if (comando == "cadastrar") {
      print("\x1B[2J\x1B[0;0H");
      cadastrar();
    } else if (comando == "mostrar") {
      print(pessoa);
    } else {
      print("COMANDO INEXISTENTE");
    }
  }
}