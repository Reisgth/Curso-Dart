import 'animal.dart';

class Gato extends Animal {
  String nome = "";

  // invocando o metodo na classe filho
  // passando barulho por referencia sem definição
  Gato(this.nome, barulho) : super(barulho); 
}