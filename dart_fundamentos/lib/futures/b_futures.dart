void main(){
  /*print('Levando o carro para o mecânico');
  Future<int>(() {
    // função assincrona que vai fazer o orçamento da manutenção do nosso carro
    return 10 ~/ 2;
  }).then((valorOrcamento){
    print('O orçamento para arrumar o carro é de $valorOrcamento');
  });

  print('Fui Viajar');
  Future<String>(() {
    // indo viajar
    throw Exception('Avião Caiu');
    return 'produto comprado';
  }).then((comprado){
    print('comprei o produto');
  }).catchError((error){
    print('O aviao caiu');
  });

  print('Saindo da mecânica');*/

  Future<int>((){
    return 10 ~/ 2;
  }).then((value) => print('Valor calculado é $value'));

  Future<int>((){
    return 10 ~/ 0;
  }).then((value) => print('Valor calculado é $value'),
    onError: (error) {
      print('Ocorreu um erro $error');
    }
  );
  
}