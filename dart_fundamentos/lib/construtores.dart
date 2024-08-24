import 'pessoa.dart';

void main(){
    /*var pessoa = Pessoa(
      'Victor', 38, 'Masculino'
    );
    print(pessoa.nome);*/
    /*var pessoa = Pessoa(
      nomeConstruct: 'Victor',
      idadeConstruct: 25,
      sexoConstruct: 'Masculino'
    );*/
    var pessoa = Pessoa(
      nome: 'Victor',
      idade: 25,
      sexo: 'Masculino'
    );

    //construtor nomeado
    var pessoaNomeado = Pessoa.semNome(
      idade: 25,
      sexo: 'Masculino'
    );

    var pessoaFabrica = Pessoa.fabrica('Victor');


    print(pessoa.nome);
}