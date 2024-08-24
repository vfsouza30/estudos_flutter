import 'dart:async';

/* void main() {
  buscarAlgo(1).then((value) => print('Mensagem: $value'))
  .catchError((error) => print('Mensagem: $error'));
} */
Future<void> main() async {
  try {
  final mensagem = await buscarAlgo(2);
  print('Mensagem: $mensagem');
} catch (e, s) {
  print(e);
  print(s);
}
}

Future<String> buscarAlgo(int numero) {
  final completer = Completer<String>();

  Timer(Duration(seconds: 2), (){
    if(numero == 0){
      completer.complete('Número enviado com sucesso');
    }else{
      completer.completeError('Número enviado com erro', StackTrace.current);
    }
  });

  return completer.future;
}