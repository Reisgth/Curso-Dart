class Pessoa {
  var nome = "";
  int idade = 0;
  String sexo = "";
  double peso = 0;
  double altura = 0;

  double imc() => peso / (altura * altura);

  bool ehMenor() => idade < 18;

  // String _nomeRestrito = "Henrique";       variavel private com _ na frente do nome
  // final String nomeRestrito2 = "Reis";  // Variavel também privada: só pode ser inicializada e não mais alterada

  // *****Maneira rustica de constructor*****
  // Pessoa(String nome, int idade, String sexo)
  //   this.nome = nome;
  //   this.idade = idade;
  //   this.sexo = sexo;
  // }

  // Pessoa(this.nome, this.idade, this.sexo, this.peso, this.altura);

  // arrow function executa e retorna o valor
}
