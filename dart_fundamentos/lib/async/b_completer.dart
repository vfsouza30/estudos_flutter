import 'dart:async';

/* void main(){
  final usuario = UsuarioRepository();
  usuario.salvarComum((sucess) { 
    print('Sucesso $sucess');
  }, (error) {
      print('Error: $error');
   });
} */

Future<void> main() async {
  final usuario = UsuarioRepository();
  try {
    final sucesso = await usuario.salvarCompleter();
    print('Sucesso: $sucesso');
  } catch (e) {
    print('Error: $e');
  }
}

class UsuarioRepository {

  void salvarComum(void Function(String) callbackSuccess,
      void Function(String) callbackError){
        Timer(Duration(seconds: 2), (){
          try{
            callbackSuccess('Usuário salvo com sucesso');
          } catch (e) {
            callbackError('Erro');
          }
        });
      }


  Future<String> salvarCompleter() {
    final completer = Completer<String>();
    Timer(Duration(seconds: 2), (){
          try{
            completer.complete('Usuário salvo com sucesso');
          } catch (e) {
            completer.completeError('Erro');
          }
        });

        return completer.future;
  }
}

