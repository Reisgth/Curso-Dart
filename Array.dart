import 'dart:io';

main() {
  var nomes = [];
  bool isTrue = true;

  while(isTrue) {
    print("\nDigite um nome ou sair para finalizar: ");
    String text = stdin.readLineSync().toString();

    if(text == "sair"){
      print("\nPrograma Finzalido\n");
      isTrue = false;
    } else {
      nomes.add(text);
    }
  }

  print("\n$nomes");
}