import 'dart:io';

main() {
  List<String> itens = [];
  
  while(true) {
    print("BEM VINDO AS COMPRAS");
    print("1 - ADICIONAR ITEMS AO CARRINHO");
    print("2 - MOSTRAR OS ITENS DO CARRINHO");
    print("3 - REMOVER ITENS DO CARRINHO");
    print("4 - ENCERRAR COMPRAS");

    int option = int.parse(stdin.readLineSync().toString()); //Recebe dado, convert to string e convert to int

    if(option == 1) {
      print("adicionaItem");
      print("\x1B[2J\x1B[0;0H");
    } else if(option == 2) {
      print("mostrarCarrinho");
    } else if (option == 3){
      print("removerItem");
    } else {
      print("=====OBRIGADO PELA PREFERENCIA!=====");
      return 0;
    }
  }
}