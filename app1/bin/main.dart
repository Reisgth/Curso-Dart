import 'src/cadastrar_pessoas.dart';
import 'src/calculo_idade.dart';
import 'src/calculo_imc.dart';
import 'src/carrinho_compras.dart';

void main(List<String> arguments) { // Exemplo usando a lista de argumentos do main
  if(arguments[0] == "cadastrar-pessoas") {
    cadastrarPessoas();
  }
  if (arguments[0] == "calculo-idade") {
    calculoIdade();
  }
  if (arguments[0] == "calculo-imc") {
    calculoIMC();
  }
  if (arguments[0] == "carrinho-compras") {
    carrinhoCompras();
  }
}
