import 'dart:io';

calculoIMC(peso, altura) {

  var IMC = peso / (altura * altura);

  return IMC;
}

mostraIMC(IMC) {

  print("\nSeu IMC eh de: ");
  print(IMC);
  
  if (IMC < 18.5) {
    print("\nAbaixo do Peso");
  } else if (IMC < 25) {
    print("\nPeso Normal");
  } else if (IMC < 30) {
    print("\nSobrepeso");
  } else if (IMC < 35) {
    print("\nObesidade1");
  } else if (IMC < 40) {
    print("\nObesidade2");
  } else {
    print("\nObesidade3");
  }
}

main() {
  //Calculo de IMC
  var altura, peso, IMC, input;

  print("Digite seu peso: ");
  input = stdin.readLineSync();
  peso = double.parse(input);

  print("Digite sua altura: ");
  input = stdin.readLineSync();
  altura = double.parse(input);

  IMC = calculoIMC(peso, altura);

  mostraIMC(IMC);
}