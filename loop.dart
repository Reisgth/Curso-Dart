import 'dart:io';

main() {
  int x;

  print("\n\nFOR\n\n");
  for(x=0; x<10; x++) {
    print("Numero $x");
  }

  print("\n\nWHILE\n\n");
  x=0;
  while(x<10) {
    print("Numero $x");

    x++;
  }

  bool isTrue = true;

  while (isTrue) {
    
    print("\nDigite sua frase ou sair para finalizar\n");
    var frase = stdin.readLineSync();

    if(frase == "sair") {
      print("Programa finalizado");
      return 0;
    } else {
      print("Sua frase eh: $frase");
    }

  }
}