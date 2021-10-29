import 'src/pessoa.dart';
import 'dart:io';

void main(List<String> arguments) {
  Pessoa pessoa = Pessoa();

  print("Digite o seu nome: ");
  pessoa.nome = stdin.readLineSync().toString();
  print("Digite o sua idade: ");
  pessoa.idade = int.parse(stdin.readLineSync().toString());
  print("Digite o seu sexo: ");
  pessoa.sexo = stdin.readLineSync().toString();
  print("Digite o seu peso: ");
  pessoa.peso = double.parse(stdin.readLineSync().toString());
  print("Digite o sua altura: ");
  pessoa.altura = double.parse(stdin.readLineSync().toString());

  print("\nNome: ${pessoa.nome}");
  print("Sexo: ${pessoa.sexo}");
  print("IMC: ${pessoa.imc()}");
  print("Eh menor de idade: ${pessoa.ehMenor()}");
}