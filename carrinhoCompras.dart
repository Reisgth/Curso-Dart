import 'dart:io';

List<String> itens = [];

adicionaItens() {
  while(true) {
    print("DIGITE O ITEM A ADICIONAR NO CARRINHO OU SAIR PARA RETORNAR AO MENU: ");
    String item = stdin.readLineSync().toString();
    
    if(item == "SAIR" || item == "sair") {
        return main;
      } // Volta para o menu

    itens.add(item);
    print("\x1B[2J\x1B[0;0H");
  }
}
main() {
    
  while(true) {
    print("\n=====BEM VINDO AS COMPRAS=====\n");
    print("1 - ADICIONAR ITENS AO CARRINHO");
    print("2 - MOSTRAR OS ITENS DO CARRINHO");
    print("3 - REMOVER ITENS DO CARRINHO");
    print("4 - ENCERRAR COMPRAS");

    int option = int.parse(stdin.readLineSync().toString()); //Recebe dado, convert to string e convert to int

    if(option == 1) {
      adicionaItens();
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