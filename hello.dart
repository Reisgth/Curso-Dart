import 'dart:io';
main() {

  var input, idade;
  
  print("Digite a sua idade\n");

  input = stdin.readLineSync();
  idade = int.parse(input);

  if(idade < 18) {
    print("\nMenor de idade");
  } else {
    print("\nMaior de idade");
  }

}