void main() {

  // Future -> Incompleto, Completo com Sucesso, Completo com Erro;

  Future((){
    // Função Assincrona
  }).then((value){
    // Registrando funcção que será executada quado o futuro for completado com sucesso!
  }).catchError((error) {
    // Registrando função que será executada quando o futuro for completado com erro!
  }).whenComplete((){
    // Registrando a função que será executada SEMPRE (quando erro ou sucesso)!
  });
}