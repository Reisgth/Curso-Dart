import 'dart:io';

List<String> itens = [];

adicionaItens() {

  print("\x1B[2J\x1B[0;0H");
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

mostrarItens() {
  int x;
  
  print("\x1B[2J\x1B[0;0H");
  for(x=0;x<itens.length;x++)
    print("Item $x - ${itens[x]}");

  print("\nDIGITE SAIR PARA RETORNAR AO MENU");
  String item = stdin.readLineSync().toString();

  if (item == "SAIR" || item == "sair") {
    return main;
  } // Volta para o menu
}
main() {
  
  print("\x1B[2J\x1B[0;0H");
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
      mostrarItens();
    } else if (option == 3){
      print("removerItem");
    } else {
      print("=====OBRIGADO PELA PREFERENCIA!=====");
      return 0;
    }
  }
}