class Produto {
  final int _id;
  final String nome;
  final double _preco;

// tendo atributos finais, eu tenho que ter um contrutor com init(parte com :) pois a variável final ela é em tempo de execução, então ela ou ja foi setada como null ou
// o nullsafety reclama dela
  Produto({
    required int id,
    required this.nome,
    required double preco,
  }) : _id = id,
       _preco = preco;

  factory Produto.fabrica({
    required int id,
    required String nome,
    required double preco
  }){
    return Produto(id: id, nome: nome, preco: preco);
  }

}
