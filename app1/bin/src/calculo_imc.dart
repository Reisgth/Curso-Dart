import 'dart:io';

imcCalc(peso, altura) {

  double imc = peso / (altura * altura);

  return imc;
}

mostraIMC(imc) {

  print("\nSeu IMC eh de: ");
  print(imc);
  
  if (imc < 18.5) {
    print("\nAbaixo do Peso");
  } else if (imc < 25) {
    print("\nPeso Normal");
  } else if (imc < 30) {
    print("\nSobrepeso");
  } else if (imc < 35) {
    print("\nObesidade1");
  } else if (imc < 40) {
    print("\nObesidade2");
  } else {
    print("\nObesidade3");
  }
}

calculoIMC() {
  //Calculo de IMC
  dynamic altura, peso, imc, input;

  print("Digite seu peso: ");
  input = stdin.readLineSync();
  peso = double.parse(input);

  print("Digite sua altura: ");
  input = stdin.readLineSync();
  altura = double.parse(input);

  imc = imcCalc(peso, altura);

  mostraIMC(imc);
}