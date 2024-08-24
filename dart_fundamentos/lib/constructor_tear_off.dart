void main() {
  final nomes = ['Rodrigo', 'Guilherme', 'Renato', 'Sandra'];

  final pessoasAntigo = nomes.map((nome) => Pessoa(nome)).toList();

  final pessoas = nomes.map<Pessoa>(Pessoa.new).toList();

  print(pessoas);
  for(var pessoa in pessoas){
    print('Olá ${pessoa.nome}');
  }

  funcaoQualquer((Pessoa.new));


}
// quando se usar o constructor tear off, deve-se atentar a assinatura do metodo.
// void, dynamic, object e o tipo do metodo que ta passando são permitidos
void funcaoQualquer(void Function(String) funcao) {
  funcao('Victor');
}

class Pessoa {
  String nome;

  Pessoa(this.nome);
  Pessoa.nome(this.nome);
}

