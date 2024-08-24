void main() {
  var pessoa = Pessoa()
    ..nome = 'Victor'
    ..email = 'teste@gmail.com'
    ..site = 'victor.com.br'
    ..printPessoa();


  var mapa = Map<String,String>()
    ..putIfAbsent('nome', () => 'Rodrigo')
    ..putIfAbsent('email', () => 'teste@gmail')
    ..putIfAbsent('site', () => 'teste.com.br');

}

class Pessoa {
  String? nome;
  String? email;
  String? site;

  void printPessoa(){
    print('''
  Pessoa:
    Nome: $nome
    Email: $email
    Site: $site
''');
  }
}