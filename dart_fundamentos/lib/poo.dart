class Camiseta {
  
  //Atributos de Instância
  String? tamanho;
  String? _cor;
  String? marca;

  //Atributos de Classe
  static const String _nome2 = 'Camiseta';
  static const String nome = 'Camiseta';

  //Método de classe
  static String recuperarNome() => nome;
  static String _recuperar2Nome() => nome;

  String? get cor => _cor;
  set cor(String? cor){
    if(cor == 'Verde'){
      throw Exception('Não pode ser Verde');
    }
  }
}