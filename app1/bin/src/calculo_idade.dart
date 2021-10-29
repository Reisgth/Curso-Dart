import 'dart:io';
calculoIdade() {

  dynamic input, idade;
  
  print("Digite a sua idade\n");

  input = stdin.readLineSync();
  idade = int.parse(input);

  if(idade < 12) {
    print("\nCrianca");
  } else if (idade < 18) {
      print("\nAdolescente");
    } else if (idade < 60) {
        print("\nAdulto");
      } else {
          print("\nIdoso");
        }
}