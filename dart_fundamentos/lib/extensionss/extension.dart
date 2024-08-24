import 'package:dart_fundamentos/extensionss/pessoa.dart';
import 'package:dart_fundamentos/extensionss/pessoa_saudacao_extension.dart';
import 'package:dart_fundamentos/extensionss/saudacao_string_extension.dart';

void main(){

  var nome = 'Victor';

  print(nome.saudacao());

  var p1 = Pessoa(nome: 'Victor');

  print(p1.saudacao());
}