class Pessoa {
  
  String? nome;
  int? idade;
  String? sexo;

 /* Pessoa({required String nomeConstruct, required int idadeConstruct, required sexoConstruct}){
    nome = nomeConstruct;
    idade = idadeConstruct;
    sexo = sexoConstruct;
  }*/

  Pessoa({required this.nome, required this.idade, required this.sexo});

  Pessoa.semNome({
    required this.idade,
    required this.sexo
  });

  Pessoa.vazia();

  //é usado quando se precisa fazer um regra de negócio antes de criar a classe
  factory Pessoa.fabrica(String nomeConstr){

    var nome = nomeConstr + '_Fabrica';
    var pessoa = Pessoa.vazia();
    pessoa.nome = nome;

    return pessoa;
  }
}