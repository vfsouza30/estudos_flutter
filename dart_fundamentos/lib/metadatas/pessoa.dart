import 'package:dart_fundamentos/metadatas/fazer.dart';

@Fazer(quem: 'Victor na class', oque: 'tentando ler a anotacao class')
@deprecated
class Pessoa {
  @Fazer(quem: 'Victor no atributo', oque: 'tentando ler a anotacao do atributo')
  String? nome;

    @Fazer(quem: 'Victor no metodo', oque: 'tentando ler a anotacao do metodo')
  
  void fazerAlgo(){}

}