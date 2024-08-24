import 'dart:async';

Future<void> main() async {

  print(DateTime.now().toIso8601String());
  //sem async await
  /* final aguardando = inserindoAlgoBemLento();
  
  aguardando
  .timeout(Duration(seconds: 1), onTimeout: () {
    print('Terminou com Timeout');
  })
  .then((value){
    print('Terminou a execução');
  })
  .catchError((erro) {
    print('Terminou com erro: $erro');
  }); */

  //com async await

  try {
  final aguardando = await inserindoAlgoBemLento().timeout(Duration(seconds: 2));
} on TimeoutException catch (e) {
  print('Finalizou com timeout $e');
}


}

Future<void> inserindoAlgoBemLento() {
  return Future.delayed(Duration(seconds: 3),(){
    print('Terminou o insert');
    print(DateTime.now().toIso8601String());
  });
}